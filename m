Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A3937214ED
	for <lists+linux1394-devel@lfdr.de>; Sun,  4 Jun 2023 07:45:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1q5gYE-0006Lv-Eg;
	Sun, 04 Jun 2023 05:45:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1q5gYC-0006Ll-Qg
 for linux1394-devel@lists.sourceforge.net;
 Sun, 04 Jun 2023 05:45:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Sz66tRqOl7u4PP0rtKdaeKmYwO41z2vXEGUTAqF6eOk=; b=DrfsO41zruZSDyeQ4kCv9hlwFl
 VofkFpgu4cWtdrYw4KSyIHxVZ/Rtaw/7V+0iMJzgyb3xpUvyGuzrCPALWDh6g8wKTP5Ys9iro+Dlo
 rnxdX8zOZRyjAjc+StbplhKB+RNBRO1nrUUwLz/Po2IzyTNBB7C/gH1GX6nWPy8O/d/E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Sz66tRqOl7u4PP0rtKdaeKmYwO41z2vXEGUTAqF6eOk=; b=EfgwG8hWloNNAPbyMsjwSOSocM
 jI3QXb1aws4FV3kx6CAmNuiBFBmPE2z5dSa29sx/L1AyicKJp8PPiTVnSkRWxgniWrjdSPKbouS2G
 jXUhC6h7v3iRpCI5gfPRKY/ozOsd1R93VOLYBBxENn8JnyHx1yDXArF1YYy8VoyPXZkU=;
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q5gY6-00AcP2-3L for linux1394-devel@lists.sourceforge.net;
 Sun, 04 Jun 2023 05:45:13 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 8F8FE5C0110;
 Sun,  4 Jun 2023 01:45:00 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Sun, 04 Jun 2023 01:45:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:content-transfer-encoding:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm1; t=1685857500; x=
 1685943900; bh=Sz66tRqOl7u4PP0rtKdaeKmYwO41z2vXEGUTAqF6eOk=; b=o
 89WvoV8bluHsnci8TokM/pj5qc/eiLfisRvUK4fZo2RVGYR42fpiC94IYdfd0gU9
 W1cG/Pfs1AFMYof5UTMjmfM23YMNEuv6SuHDoaN6n8cY7kJlVzb6AVgjoLuoz7VB
 lAJNbOpGnJwqTedt4JEJijVZfq+I1j6QCei4Ft1cpYw1qgzmyeg0e0ncLjijkCom
 Vrl+BXuaPCdD4SdtZWS5xxU4cGYQqnuqCVJyLqXfLDZ2b303lg6ZErlS+04crCvX
 aRl2yh86C4GiNSxX+pjsBnyM/wYgRhsoJ28oe7qAHGbLylBEk2i1JfzNIJleiFB+
 /ol7Ze39MU9wN7HWemtXA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:date:feedback-id:feedback-id:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:sender
 :subject:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1685857500; x=1685943900; bh=S
 z66tRqOl7u4PP0rtKdaeKmYwO41z2vXEGUTAqF6eOk=; b=LmCckfrTic7A+wlL1
 Zlq2lEBWP4sNyoGKP2exgaS0E1/MIxFteoSDU9q6gqZd+KaTGt/8A+XLehuSvVRr
 DK7epqbP4oBeaIBpatYiNeyZZwfWl84THx5gXv+yHalBsHILmcfkpOFzZaLbj9JC
 6Wgb2BI6Atss+5EfAxhbDHbc/n8ALZHzaKuFo22mYYC6vR/3B0DsfErI9wB997Mw
 Q5/GSrM0NSsx6PcGCFHlvfxZyyiWDNtq6EBsIQz8ib7fgNfE5axxyjTBcaEoFJJU
 cOMTouNJPnzRerNSMSA0NpHNvQs4tx67S+4Yy9YEjUTN3hzgG+ptUz95sLT8oVkI
 QhD3w==
X-ME-Sender: <xms:3CR8ZMatPDz7yyyR2nz6UaMlh5P91lsVjMejk0NhY7Fz7Ab4fAWTew>
 <xme:3CR8ZHb9c1jpNFBKhTTNk4odIYt_6mi5iuVgH3I84HCwUOFUs5JyPpb-Ueiper4EO
 HgR50aFv8CvEnyZIPk>
X-ME-Received: <xmr:3CR8ZG9HQ9Ms82cB036l6ylb9HJz6EReZP5M1EopNBqXpRfVubZt3h81At0sYhQ-HvkAqwhV0B6MNeSznSPCcbhywLm08s7LuU4fqkSEzDc>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfeeliedguddtudcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeevfefffe
 ektefgveegfeelheffhfeujedtjeevtefhkeevkedtjeejvddtjefhjeenucevlhhushht
 vghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:3CR8ZGqQCsf3YoPpI6E3D8ds2z6peEiPntjXNJs8vZKFDUcmLr0pRQ>
 <xmx:3CR8ZHp9OofVVIKB9i0WoEyK6jdV6L3evfkHwlNVq99AbRoSFow_2w>
 <xmx:3CR8ZESlARquTdiWEVLMV11dSwTa1nXk1JZkelw97ogZ5WQUo_QZng>
 <xmx:3CR8ZGRDYnEicNku_yI-xuvJZZvkLQEp10xmV2_bLNm6wI8ochR2wA>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 4 Jun 2023 01:44:59 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [PATCH 3/9] firewire: ohci: use devres for MMIO region mapping
Date: Sun,  4 Jun 2023 14:44:45 +0900
Message-Id: <20230604054451.161076-4-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230604054451.161076-1-o-takashi@sakamocchi.jp>
References: <20230604054451.161076-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The PCI framework has the convenient helper function to check
 and map MMIO region with managed device resource. This commit elaborates
 1394 OHCI driver to use the function. Signed-off-by: Takashi Sakamoto
 <o-takashi@sakamocchi.jp>
 --- drivers/firewire/ohci.c | 26 ++++++ 1 file changed, 6 insertions(+),
 20 deletions(-) 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.26 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1q5gY6-00AcP2-3L
X-BeenThere: linux1394-devel@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux IEEE 1394 development list
 <linux1394-devel.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=linux1394-devel>
List-Post: <mailto:linux1394-devel@lists.sourceforge.net>
List-Help: <mailto:linux1394-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

The PCI framework has the convenient helper function to check and map MMIO
region with managed device resource.

This commit elaborates 1394 OHCI driver to use the function.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c | 26 ++++++--------------------
 1 file changed, 6 insertions(+), 20 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index f3d0882a876c..26c64b60144d 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -3608,18 +3608,12 @@ static int pci_probe(struct pci_dev *dev,
 		return -ENXIO;
 	}
 
-	err = pci_request_region(dev, 0, ohci_driver_name);
+	err = pcim_iomap_regions(dev, 1 << 0, ohci_driver_name);
 	if (err) {
-		ohci_err(ohci, "MMIO resource unavailable\n");
-		return err;
-	}
-
-	ohci->registers = pci_iomap(dev, 0, OHCI1394_REGISTER_SIZE);
-	if (ohci->registers == NULL) {
-		ohci_err(ohci, "failed to remap registers\n");
-		err = -ENXIO;
-		goto fail_iomem;
+		ohci_err(ohci, "request and map MMIO resource unavailable\n");
+		return -ENXIO;
 	}
+	ohci->registers = pcim_iomap_table(dev)[0];
 
 	for (i = 0; i < ARRAY_SIZE(ohci_quirks); i++)
 		if ((ohci_quirks[i].vendor == dev->vendor) &&
@@ -3644,10 +3638,8 @@ static int pci_probe(struct pci_dev *dev,
 					       PAGE_SIZE,
 					       &ohci->misc_buffer_bus,
 					       GFP_KERNEL);
-	if (!ohci->misc_buffer) {
-		err = -ENOMEM;
-		goto fail_iounmap;
-	}
+	if (!ohci->misc_buffer)
+		return -ENOMEM;
 
 	err = ar_context_init(&ohci->ar_request_ctx, ohci, 0,
 			      OHCI1394_AsReqRcvContextControlSet);
@@ -3747,10 +3739,6 @@ static int pci_probe(struct pci_dev *dev,
  fail_misc_buf:
 	dma_free_coherent(ohci->card.device, PAGE_SIZE,
 			  ohci->misc_buffer, ohci->misc_buffer_bus);
- fail_iounmap:
-	pci_iounmap(dev, ohci->registers);
- fail_iomem:
-	pci_release_region(dev, 0);
 
 	return err;
 }
@@ -3793,8 +3781,6 @@ static void pci_remove(struct pci_dev *dev)
 	kfree(ohci->it_context_list);
 	kfree(ohci->ir_context_list);
 	pci_disable_msi(dev);
-	pci_iounmap(dev, ohci->registers);
-	pci_release_region(dev, 0);
 
 	dev_notice(&dev->dev, "removing fw-ohci device\n");
 }
-- 
2.39.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
