Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CE118931CC
	for <lists+linux1394-devel@lfdr.de>; Sun, 31 Mar 2024 15:51:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rqvaV-0006JL-EJ;
	Sun, 31 Mar 2024 13:51:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rqvaS-0006J8-Ds
 for linux1394-devel@lists.sourceforge.net;
 Sun, 31 Mar 2024 13:51:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uOw+tg91pvfmeSLmBzCONKSxkv2GqAof7vSFCeSIuA4=; b=eBysGXm3IgzROiQjBumQ22Son+
 lVS//2ZoFLBzVszTbDr6jJC3l8hLsPuVvEug+E8XTQOcwiEkUu/1CF4U4yvjQmZzG2GYkdCd4tY+i
 qvA9g66vI/oAc2gw6ItsnB2qCM8g0lsjTdROa4J+5gq0mop4blzGnAS5Gk5wEdqHSP/k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uOw+tg91pvfmeSLmBzCONKSxkv2GqAof7vSFCeSIuA4=; b=gQtFO8M5eOTTFeRZ8MPfpqqkzf
 BDcK3qh0zfjRPvN4if9hK3IesHjY3XQ37s8hV/lPidPKk6x2KLR0KmLJprTh7aEY4K6pNd4o3VX2r
 GZIPEibGa7KVc139KLmVJ415Rf0qAM9015GWslYLsDVKaXSPKR9dDFJBeju1d+wJ9OBU=;
Received: from wfhigh5-smtp.messagingengine.com ([64.147.123.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rqvaP-00040D-T8 for linux1394-devel@lists.sourceforge.net;
 Sun, 31 Mar 2024 13:51:04 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailfhigh.west.internal (Postfix) with ESMTP id 8867518000EF;
 Sun, 31 Mar 2024 09:50:51 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Sun, 31 Mar 2024 09:50:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1711893051; x=
 1711979451; bh=uOw+tg91pvfmeSLmBzCONKSxkv2GqAof7vSFCeSIuA4=; b=I
 TPXHysp+bNhFDtP00nyfPo+nL4VIjghkX1158R/Ts6LggcU0NmYyfEAC7A3bVpRh
 Abf81gWvU7MpzT+We7a/cfEuJwp5dYjV0uIb6z/I/ElZ+sIvc6bKRGa/lJQzanSf
 5d+hYheRoLBNUnxhFbeFxyXR9W+gFxp82O8xuyyEO+U4drc84k6f5cUmKQ/qYNit
 lTM+4ANd0Gw3IMv1SJ9hbFIhtYPN7vmg8GhkcXTItNMJEvlajUADw6nVKtP1NbcP
 SZORAO5hwNx1wuW+n7y8SL+VrIqHNJFHq8uVpzNjQyxPGjA87B0Y/80Ch20bAInN
 tDjdnAZzZPp804QKZzG/g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1711893051; x=
 1711979451; bh=uOw+tg91pvfmeSLmBzCONKSxkv2GqAof7vSFCeSIuA4=; b=P
 4Ervmmksa0SEV6ADejD5SPyKegJzR+dc3/jFAcF/F2y9fhyl9k7M07apaM2EvE7y
 CcFqRmXWTPbCbpo5kQTCaG8c2kdR3Igv9IhDmxKtjLVqjamekmB3X+io57OG4HvM
 ZmJq4xB2gzPeXRHPj3YuguBmEQAYLi1muLOSIlsbu0nJd37vh42Ann4mblmdtip9
 azoG/YplDXB4y4Y02B9FTdOIwregSg7ah4Lyvhp08ZLGaa9BvIeulJQP2ngVNVZr
 hhu3U7pylPvAP+T1SyUh/QUW+VvwBVhoUByor3y1QW/SThO6BMXMF/TiRNgjspr6
 2D+w/cDwyTAEBvFEUyrvg==
X-ME-Sender: <xms:OmoJZtCiC8tavsglToLlBl5IC0t87W10OfNRb5TU7PglaeXSKlfKkQ>
 <xme:OmoJZrhO8ae0sHlvmm9jKSius_xYq3r5go6Mg32-e8AB-tz13r9_1QfkhNfV1arsJ
 Xe1Vwivg5xTlLvibZk>
X-ME-Received: <xmr:OmoJZokseGc0dr2Mw6TFdGOzvFAPJfV576dqO15AKZoKwH2EUq7Repv2rUP-lhsQGwm07s0lTm04MqCsEEp3pnBk3caVVY0SqqlvtJ6If2m0>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledruddvkedggeejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedvnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:OmoJZnx4XSf2LLXP8AjI51VgckOWugqH-iKuc_6GA9zO2uJoS-p9cA>
 <xmx:OmoJZiR5n5NfjTD9trj2ydAegelQAoKARk9vrHOpxY85StsnPCQEOA>
 <xmx:OmoJZqaI04fViV7-y0GdajseNtF8ftanUA1f7t8GZ6xoiGBf_Xx_iQ>
 <xmx:OmoJZjTke0EKb-aWmC_bI4OkFTMHKcNcjoLvQA1dFG8v22e7kl-_WA>
 <xmx:O2oJZgcdyqNMfaBbIJEXTGEUwhWqKviO5sKi0T2nrE4E8fPVsjhXoHBoze0>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 31 Mar 2024 09:50:49 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 4/4] firewire: ohci: use pci_irq_vector() to retrieve
 allocated interrupt line
Date: Sun, 31 Mar 2024 22:50:37 +0900
Message-ID: <20240331135037.191479-5-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240331135037.191479-1-o-takashi@sakamocchi.jp>
References: <20240331135037.191479-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The pci_irq_vector() is available to retrieve the allocated
 interrupt line instead of the direct access to the member of device structure.
 Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp> ---
 drivers/firewire/ohci.c
 | 18 +++++++++++++----- 1 file changed, 13 insertions(+), 5 deletions(-) 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.156 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1rqvaP-00040D-T8
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
Cc: linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

The pci_irq_vector() is available to retrieve the allocated interrupt line
instead of the direct access to the member of device structure.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c | 18 +++++++++++++-----
 1 file changed, 13 insertions(+), 5 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index c14e6efaba36..f3b610f86aac 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -3623,7 +3623,7 @@ static int pci_probe(struct pci_dev *dev,
 	struct fw_ohci *ohci;
 	u32 bus_options, max_receive, link_speed, version;
 	u64 guid;
-	int i, flags, err;
+	int i, flags, irq, err;
 	size_t size;
 
 	if (dev->vendor == PCI_VENDOR_ID_PINNACLE_SYSTEMS) {
@@ -3754,12 +3754,17 @@ static int pci_probe(struct pci_dev *dev,
 	err = pci_alloc_irq_vectors(dev, 1, 1, flags);
 	if (err < 0)
 		return err;
+	irq = pci_irq_vector(dev, 0);
+	if (irq < 0) {
+		err = irq;
+		goto fail_msi;
+	}
 
-	err = request_threaded_irq(dev->irq, irq_handler, NULL,
+	err = request_threaded_irq(irq, irq_handler, NULL,
 				   pci_dev_msi_enabled(dev) ? 0 : IRQF_SHARED, ohci_driver_name,
 				   ohci);
 	if (err < 0) {
-		ohci_err(ohci, "failed to allocate interrupt %d\n", dev->irq);
+		ohci_err(ohci, "failed to allocate interrupt %d\n", irq);
 		goto fail_msi;
 	}
 
@@ -3779,7 +3784,7 @@ static int pci_probe(struct pci_dev *dev,
 	return 0;
 
  fail_irq:
-	free_irq(dev->irq, ohci);
+	free_irq(irq, ohci);
  fail_msi:
 	pci_free_irq_vectors(dev);
 
@@ -3789,6 +3794,7 @@ static int pci_probe(struct pci_dev *dev,
 static void pci_remove(struct pci_dev *dev)
 {
 	struct fw_ohci *ohci = pci_get_drvdata(dev);
+	int irq;
 
 	/*
 	 * If the removal is happening from the suspend state, LPS won't be
@@ -3808,7 +3814,9 @@ static void pci_remove(struct pci_dev *dev)
 
 	software_reset(ohci);
 
-	free_irq(dev->irq, ohci);
+	irq = pci_irq_vector(dev, 0);
+	if (irq >= 0)
+		free_irq(irq, ohci);
 	pci_free_irq_vectors(dev);
 
 	dev_notice(&dev->dev, "removing fw-ohci device\n");
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
