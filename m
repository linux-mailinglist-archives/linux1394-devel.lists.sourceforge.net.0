Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 87A757214EE
	for <lists+linux1394-devel@lfdr.de>; Sun,  4 Jun 2023 07:45:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1q5gYD-00053p-8r;
	Sun, 04 Jun 2023 05:45:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1q5gYB-00053Z-Rf
 for linux1394-devel@lists.sourceforge.net;
 Sun, 04 Jun 2023 05:45:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+LOorxHwbHKlpWuigPekygpArmsdgCBfeAYLfsUoUC8=; b=heuazmeKY9wMZAQ/YuqdAoFvo6
 S7ziEmYBwId8uPFUAKCVVsT8cT2WA6bYImP1onVE9D40/AphGuhYyz1gMz32757J2bRcgqDaj+Azw
 devM5ZUitLfNgdd5iylxhIKczsr2IxVia6960WzhrIQQjYtDDj6lvhMxnJdPSwgU65/o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+LOorxHwbHKlpWuigPekygpArmsdgCBfeAYLfsUoUC8=; b=OzWZEIISYoVuqWOeaQSce/5wpp
 SvhmfihCN2z1LLjwdCz6LMe8sfuZJFTVdowy890nPw5NlP74DavhsjJVCul6oqiuWf3CJiCV5zHKU
 i9BrZgWOFgclLEJFCgmqlphSJGQqRrFG5UHTI4JCyzdCIyRCBOAype+aKdMywWRh/m9g=;
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q5gY6-00031O-5U for linux1394-devel@lists.sourceforge.net;
 Sun, 04 Jun 2023 05:45:11 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 3F7285C010A;
 Sun,  4 Jun 2023 01:44:59 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Sun, 04 Jun 2023 01:44:59 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:content-transfer-encoding:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm1; t=1685857499; x=
 1685943899; bh=+LOorxHwbHKlpWuigPekygpArmsdgCBfeAYLfsUoUC8=; b=l
 OO8YIkwmgwBmWa9kBcqjRiJ2ecPa213T8+CB2NHgnS9p7JK8j1IDUeTsHRDTu9x1
 lVczR98SkiknFbOWw0R8kRY4AkKhJcoPkbmfW/e6G0zptmYu9frw0gA98ZQY2P0n
 1QK4CmYXkDYTz0u/xJ0HDlk7SkJmVuhtedHOo2/rN4N1zCE3TuDSB/046vfJO+7Y
 U3UUh7kmPjA9VxsUtXtzLjiCiTgoHJOnBwZVY9AuWAcIN6tgTQqsrqHALD/6hWTj
 PYcY+odWIPyQxDXNldin//bBHo/YcDChH5Y0BLzBark3fnTAQfGIjfQZBLDhB4kP
 5leGVUYBl+cjMpsquMoYw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:date:feedback-id:feedback-id:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:sender
 :subject:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1685857499; x=1685943899; bh=+
 LOorxHwbHKlpWuigPekygpArmsdgCBfeAYLfsUoUC8=; b=PktUWT3NW9iRawXCV
 bMT1gmGk2EY+LKBNGle5fSfAxHzKh17G7TigsLwekjIIZnGh1ZYu+uUWncIRRRcL
 46hQUDWcWbjNpzOvg25p4aQIdJaD4I+DBzuSgG9rGAkkArPN7vabC9gTNk2VptPR
 8HpN82LXkzaiheJH1DZj7hkfMd4M76Te/QyuTh2n73iN6HUBBe04y2ERNX9QS820
 aMvZdZHUHjEclkrOOtdWoydwaNHzlHadhhbhGDZHwpZe98+ZtVXYjUxTF2bCdjCx
 s+wbuk728LtyZqGcB4ME+WfeyCzinsQH99inq4I7X1/xk3SiYKFRoHDeJJa/gZKV
 QeZgA==
X-ME-Sender: <xms:2yR8ZCDASnmVzG65rg0gklEYExEhz1np70wfhdyKm70SdclnlFuJWg>
 <xme:2yR8ZMip5vL9xJxXNmhaPcrbdWk3GYruKEyyuHlHPg66lCoLb6U6AYXBAzxEm9QmV
 X6DGbJw5D_wns_jIKY>
X-ME-Received: <xmr:2yR8ZFlSgJS3lDLWvIJs09xvnOnik2UBRlPzfY6R_wFE4fbmcfiYk7ZnVo0NQF32j8x9pDqTrqHiMwhPN53Ep8wYq0ss12dI-h8z8EOf4eQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfeeliedguddtudcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeevfefffe
 ektefgveegfeelheffhfeujedtjeevtefhkeevkedtjeejvddtjefhjeenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:2yR8ZAxyjuFht6k4h84ud0_tinPoyERz0MwWHM4CowEu4TRNMq9xuQ>
 <xmx:2yR8ZHQbccvX8r7gUcxjhjMFUTZew8gXioiA2DGo7_tAaqzD1AH_3Q>
 <xmx:2yR8ZLaEqaWEqGqF_CPxNDw1YCn9cxTcTDh4W11mb9nWP8qo_9VU8A>
 <xmx:2yR8ZI4B2i2kVeEoEWbW9Eoe-ZAdI58M_y4gQMvXgO0CoZS2e8lW7Q>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 4 Jun 2023 01:44:58 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/9] firewire: ohci: use devres for PCI-related resources
Date: Sun,  4 Jun 2023 14:44:44 +0900
Message-Id: <20230604054451.161076-3-o-takashi@sakamocchi.jp>
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
 Content preview: The PCI framework supports managed device resource to
 maintain
 the lifetime of PCI specific resources. This commit allows 1394 OHCI driver
 to utilize it. Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
 --- drivers/firewire/ohci.c | 10 +++------- 1 file changed, 3 insertions(+),
 7 deletions(-) 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.26 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1q5gY6-00031O-5U
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

The PCI framework supports managed device resource to maintain the
lifetime of PCI specific resources.

This commit allows 1394 OHCI driver to utilize it.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 2b02cebcb0ae..f3d0882a876c 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -3588,7 +3588,7 @@ static int pci_probe(struct pci_dev *dev,
 	pmac_ohci_on(dev);
 	devres_add(&dev->dev, ohci);
 
-	err = pci_enable_device(dev);
+	err = pcim_enable_device(dev);
 	if (err) {
 		dev_err(&dev->dev, "failed to enable OHCI hardware\n");
 		return err;
@@ -3605,14 +3605,13 @@ static int pci_probe(struct pci_dev *dev,
 	if (!(pci_resource_flags(dev, 0) & IORESOURCE_MEM) ||
 	    pci_resource_len(dev, 0) < OHCI1394_REGISTER_SIZE) {
 		ohci_err(ohci, "invalid MMIO resource\n");
-		err = -ENXIO;
-		goto fail_disable;
+		return -ENXIO;
 	}
 
 	err = pci_request_region(dev, 0, ohci_driver_name);
 	if (err) {
 		ohci_err(ohci, "MMIO resource unavailable\n");
-		goto fail_disable;
+		return err;
 	}
 
 	ohci->registers = pci_iomap(dev, 0, OHCI1394_REGISTER_SIZE);
@@ -3752,8 +3751,6 @@ static int pci_probe(struct pci_dev *dev,
 	pci_iounmap(dev, ohci->registers);
  fail_iomem:
 	pci_release_region(dev, 0);
- fail_disable:
-	pci_disable_device(dev);
 
 	return err;
 }
@@ -3798,7 +3795,6 @@ static void pci_remove(struct pci_dev *dev)
 	pci_disable_msi(dev);
 	pci_iounmap(dev, ohci->registers);
 	pci_release_region(dev, 0);
-	pci_disable_device(dev);
 
 	dev_notice(&dev->dev, "removing fw-ohci device\n");
 }
-- 
2.39.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
