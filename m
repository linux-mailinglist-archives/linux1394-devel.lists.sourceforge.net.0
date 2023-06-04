Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 30C5C7214EF
	for <lists+linux1394-devel@lfdr.de>; Sun,  4 Jun 2023 07:45:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1q5gYC-0007FM-SD;
	Sun, 04 Jun 2023 05:45:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1q5gYB-0007FE-RE
 for linux1394-devel@lists.sourceforge.net;
 Sun, 04 Jun 2023 05:45:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7jRIqu3WK9pbTJJNWXwjuu5GtvOIZ4uZ8MriEr/wEx4=; b=IqLnNrZX3s2UnwGnm7TFmV48Tq
 q/uDXTBvJIHN2TXCJymCBxYd8jriaP5V39Fbzo2SCgyqlX0XuQDrGx/WjqDKTQh0qkXMsM7Gzbfai
 TI+pzNQ3p1zBN1f7LK0xgj/OTsvD6bIojxn/c4UwxYHN1oFKr7bqEt6iyq6iqyIEPCK8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7jRIqu3WK9pbTJJNWXwjuu5GtvOIZ4uZ8MriEr/wEx4=; b=W1M739KOwnwcFNBHJBqspI8IcW
 xJpzKG39HbaIIM22QFhcWvdOYFwopOaL6iu3ptw10itI/f6o+ecto/T9GTpZMaYhSIusAvsuayErX
 sgM2rXYIUBoQTHLtM3yD/buXgkfDMp7ufXUS6CBNvi3oB7eR9kbR2y04TYkl1xyXhhJs=;
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q5gY7-00AcPL-Di for linux1394-devel@lists.sourceforge.net;
 Sun, 04 Jun 2023 05:45:12 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailout.nyi.internal (Postfix) with ESMTP id DE92D5C010D;
 Sun,  4 Jun 2023 01:45:01 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute1.internal (MEProxy); Sun, 04 Jun 2023 01:45:01 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:content-transfer-encoding:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm1; t=1685857501; x=
 1685943901; bh=7jRIqu3WK9pbTJJNWXwjuu5GtvOIZ4uZ8MriEr/wEx4=; b=k
 u1d6ors0EbpVI5FlR5rTVFzpqJu6LMsMdlTg77PoSIDlXFHX5O0ItTui1zv1qmmv
 J12EqYAdnJ1b2xdfEetGnPPC0P42gASKH5SC15VSKU+32lKQ12qM4ZGpf6rKhdEd
 q/Vk8wNw/ZUqYakRdksyFRuYU7ZHI+XYBi7R19Vt91urwXDjTGHRIBqJJObtnSF1
 MTkIY03DfXgNwH8TXE4ta4mSOau8XlXZqkUpUW7W7M52+OIMOv5Eo0LQKSGo3Y8f
 uJNqo+8S0pVqvh0kYN7VfuayZ7D/5xJ6JfoVz4Hv4l05QSivyClPpQ/At8nDo/CM
 lod4F2prGnST55PUlQcHg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:date:feedback-id:feedback-id:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:sender
 :subject:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1685857501; x=1685943901; bh=7
 jRIqu3WK9pbTJJNWXwjuu5GtvOIZ4uZ8MriEr/wEx4=; b=C3qj/yvD+wSne5+Hm
 E/Kvl8ozuJo+inh35UDu1w0/F8r8JCY/HIoEWkZ4iD6D9AusN3qV0JlxyTIb1/1p
 lH5TrqTQbuXyFRtFC3haYTctLbgOUwpF2Hijfc2SR4mHCHxu0QacTMU04J0QhIcZ
 VdoIhCCw+U7mRme8w0Awk2+BopYjIqF82iqymS8t49vUwSsycq+77rTkKoALQe4x
 hwVd5B1BOgcKMDkmP4Mjy8PSc2oDTEL7h+7oFnPNqsQ1dA/InfhVqEuhrYkvW+i7
 UxHCZixBeCTcnEkOdJnjnWtJyPBjOoMUXvAgdyH8XLa1O5trBMr4J2wcGK+OYC7U
 GFT8A==
X-ME-Sender: <xms:3SR8ZCRT4QsDcg41F_5_JAF5n1CRzRLGpyAsYWwtgVyBJIVlk5yCWA>
 <xme:3SR8ZHzayKQaNDwV18GoZYz2W3wOob2L05ro9VEGk8QqVd-bKrfh2m3_okF_G85VF
 2v0RCoeIY0vx7l5gi0>
X-ME-Received: <xmr:3SR8ZP3GgIcSzQ4abw45fCLiDnYVWwvFHlOD1iEvd5pYBQd7fpaMBY2O8aKqkdF4VHSAGWzjqwJu1mBcOEaFWgGLY8JBI0-Cr1y-PquIez0>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfeeliedguddtudcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeevfefffe
 ektefgveegfeelheffhfeujedtjeevtefhkeevkedtjeejvddtjefhjeenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:3SR8ZOBzu4Bw6WrTopGmKoxjePElidT8snqVULV-kjB1WhVRDqAeAw>
 <xmx:3SR8ZLhar4how0Mo-BrEaU2Ego-OKoSPhvw4Qdf92usrbc5buyqLHQ>
 <xmx:3SR8ZKqMsXDAlj3vDexp6Ylbx07eHGSyRpfzRbbSI_rA9j-CYUyPgw>
 <xmx:3SR8ZLLmDoFnFVgMgMlniK8X4o7hNxuB__rc9wjlAye1V_-qIDRRcQ>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 4 Jun 2023 01:45:00 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [PATCH 4/9] firewire: ohci: use devres for misc DMA buffer
Date: Sun,  4 Jun 2023 14:44:46 +0900
Message-Id: <20230604054451.161076-5-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230604054451.161076-1-o-takashi@sakamocchi.jp>
References: <20230604054451.161076-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The 1394 OHCI driver allocates a DMA coherent buffer for
 multi-purposes.
 The buffer is split into three region for specific purposes; i.e. 1/4 for
 context descriptors of AR request and response as wel [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.26 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1q5gY7-00AcPL-Di
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

The 1394 OHCI driver allocates a DMA coherent buffer for multi-purposes.
The buffer is split into three region for specific purposes; i.e. 1/4 for
context descriptors of AR request and response as well as 1/2 for self
ID handling.

This commit uses managed device resource to maintain the lifetime of
buffer.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c | 13 +++----------
 1 file changed, 3 insertions(+), 10 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 26c64b60144d..3b31d90781fe 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -3634,17 +3634,15 @@ static int pci_probe(struct pci_dev *dev,
 	 */
 	BUILD_BUG_ON(AR_BUFFERS * sizeof(struct descriptor) > PAGE_SIZE/4);
 	BUILD_BUG_ON(SELF_ID_BUF_SIZE > PAGE_SIZE/2);
-	ohci->misc_buffer = dma_alloc_coherent(ohci->card.device,
-					       PAGE_SIZE,
-					       &ohci->misc_buffer_bus,
-					       GFP_KERNEL);
+	ohci->misc_buffer = dmam_alloc_coherent(&dev->dev, PAGE_SIZE, &ohci->misc_buffer_bus,
+						GFP_KERNEL);
 	if (!ohci->misc_buffer)
 		return -ENOMEM;
 
 	err = ar_context_init(&ohci->ar_request_ctx, ohci, 0,
 			      OHCI1394_AsReqRcvContextControlSet);
 	if (err < 0)
-		goto fail_misc_buf;
+		return err;
 
 	err = ar_context_init(&ohci->ar_response_ctx, ohci, PAGE_SIZE/4,
 			      OHCI1394_AsRspRcvContextControlSet);
@@ -3736,9 +3734,6 @@ static int pci_probe(struct pci_dev *dev,
 	ar_context_release(&ohci->ar_response_ctx);
  fail_arreq_ctx:
 	ar_context_release(&ohci->ar_request_ctx);
- fail_misc_buf:
-	dma_free_coherent(ohci->card.device, PAGE_SIZE,
-			  ohci->misc_buffer, ohci->misc_buffer_bus);
 
 	return err;
 }
@@ -3774,8 +3769,6 @@ static void pci_remove(struct pci_dev *dev)
 				  ohci->config_rom, ohci->config_rom_bus);
 	ar_context_release(&ohci->ar_request_ctx);
 	ar_context_release(&ohci->ar_response_ctx);
-	dma_free_coherent(ohci->card.device, PAGE_SIZE,
-			  ohci->misc_buffer, ohci->misc_buffer_bus);
 	context_release(&ohci->at_request_ctx);
 	context_release(&ohci->at_response_ctx);
 	kfree(ohci->it_context_list);
-- 
2.39.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
