Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 520558931C9
	for <lists+linux1394-devel@lfdr.de>; Sun, 31 Mar 2024 15:51:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rqvaO-0008Gn-NZ;
	Sun, 31 Mar 2024 13:51:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rqvaM-0008Gf-V1
 for linux1394-devel@lists.sourceforge.net;
 Sun, 31 Mar 2024 13:50:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qkJRo23QIS6MlyibldBmAeHzIc3e5Kr0E1mP5LfohmM=; b=SUqcxXuiW0qI/+6AW7n9MFZqYc
 Arw0n+5ECRnAxcWwp5hZkQtWyRlDl+4czLmWx6ea3WzMdetIwAdZI/rkLQEs2/mwvvcn0G+kFBcTe
 4a/RbxyVqBOLMdwinnRcZq3kH66v0HFU80Gd9wtKJIlOk0MLQ3XDeGF8DDGrTc+vGz4o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qkJRo23QIS6MlyibldBmAeHzIc3e5Kr0E1mP5LfohmM=; b=krhBoUl6Q13pmoQcRXcjWHRBk3
 +bkGGzBNPGPh1Jj0kv4z2FI5N/FxL7juSLsnQuXe9eyFaRxuXDx5SuDuDUzQme6cJwwqN2xS8+/0L
 tZsy4byTu3/+ofMZTTDvRvYiNxwzbIFFDir8tiffEe6CCbAg7oW9o2dW4/dBOekVt3bw=;
Received: from wfout5-smtp.messagingengine.com ([64.147.123.148])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rqvaJ-0003zp-Al for linux1394-devel@lists.sourceforge.net;
 Sun, 31 Mar 2024 13:50:59 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailfout.west.internal (Postfix) with ESMTP id F32B01C000CD;
 Sun, 31 Mar 2024 09:50:44 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Sun, 31 Mar 2024 09:50:45 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1711893044; x=
 1711979444; bh=qkJRo23QIS6MlyibldBmAeHzIc3e5Kr0E1mP5LfohmM=; b=k
 IMa6WyiI4RF5Quvp9i5BL+2FjailCwKSJ9QEvcBVUYnaiSX712IrMEnIRLiT7aPQ
 RnDP8iLQahsdD9MYZVvKX9N11oCPLcmxhAaBVYC7a91I2xd8+Cr/PnAhFd6B07cx
 jkMCTpKFe9B45z1N0jsBQG+7k/3RMsX8EA36ZJIHPkKkg76Tp1Vookrkpeorkttj
 Ek/6ACzEoqSzZ6gYm5POUSywcQUT0DOVkSAz2S62HXlqn4j8DPQxgqsrR++XS6lH
 8er0kwneEe4m9YwJkNn7OCJjECOr/UDMO6/zFVvP4hJFStvCMIrgqfoYCZqr44qT
 y/RopHaIuFcYYIZp8EFZA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1711893044; x=
 1711979444; bh=qkJRo23QIS6MlyibldBmAeHzIc3e5Kr0E1mP5LfohmM=; b=I
 ZHwGU7VF97/j73JOg9bznshb4D3QMcR+0mm6fJ+Ep9gB6cl5MAcI7QFTl1s6IvO5
 2470NTtDmbZD/d1WmdaDZsPYXXoC66+PVdzvYeE+IGSWyOuYKpFIgK8YHHIMG5CW
 pq0cmLUkEVblLkeZBKJzXJftTbBcqjvTddqiPR2iB7L97fvp/S1lN4yZVxzo47Nv
 7bvL1M7QCHBdXfvGddeRoMvln+E4IygNTvlvWo6yJmb/V/HjmS7bUFFu8aL/zcMU
 /0JfSjs/CHKRnBhAKuolrLcnlyj7vq6Gvsem6QVORMBmABqlVDjV8MBFpEpQAGQZ
 2m6JW9j0/zlLpFlFPu2gg==
X-ME-Sender: <xms:NGoJZqEVmpZfxfc6aoN8M0t8XMiqwPbe1Wc9MKIcoU670l-Wgh4J3g>
 <xme:NGoJZrX3a2W1B2pTaNBHyVFhtUDzI1NzY_ljbbhrzw4xLFn6VAfn1cq1wHXS5y8dA
 5jqCGivQ1QqvhROApQ>
X-ME-Received: <xmr:NGoJZkJuwXe60nP77v6e9X0pn_X3p1ZuYskldoInpb53k0EpW9cMAwE6lljw-n1zKO8deFV9K59VAqQs7YD6Hd63m95vIbVrfP3AK2_iBFjv>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledruddvkedggeejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:NGoJZkGqJuxTRyUplKSaCLA-6k0QD1M0QfozLWwRf-slozP0Swa_Vw>
 <xmx:NGoJZgWonNcoDCvwtB3BDWyvGmA7wDDpx7r2YnqzedQsroaREL31KA>
 <xmx:NGoJZnOkKkjoNGUJ9jxK75xhOTl9gbb_yNHwVsadHTr9MtVtSZnk0g>
 <xmx:NGoJZn3oiNC0JLuBZBcg-vwPP5WxMmG8b5u5eLB3sEtzjGec9POitQ>
 <xmx:NGoJZnQF6uCQBv1MwjsAfsm64aaLFm3dUD3rJzVvdp3ES4Ajf52PbzC16QM>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 31 Mar 2024 09:50:43 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 1/4] Revert "firewire: ohci: use devres for requested IRQ"
Date: Sun, 31 Mar 2024 22:50:34 +0900
Message-ID: <20240331135037.191479-2-o-takashi@sakamocchi.jp>
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
 Content preview: This reverts commit 5a95f1ded28691e69f7d6718c5dcbc149613d431.
 As long as allocating any device interrupt vector for MSI, it is inconvenient
 to utilize managed device resources for IRQ requesting. Signed-off-by: Takashi
 Sakamoto <o-takashi@sakamocchi.jp> --- drivers/firewire/ohci.c | 14
 ++++++++------ 1 file changed, 8 insertions(+), 6 deletions(-) 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.148 listed in list.dnswl.org]
X-Headers-End: 1rqvaJ-0003zp-Al
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

This reverts commit 5a95f1ded28691e69f7d6718c5dcbc149613d431.

As long as allocating any device interrupt vector for MSI, it is
inconvenient to utilize managed device resources for IRQ requesting.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 7bc71f4be64a..f18019c5d220 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -3750,16 +3750,17 @@ static int pci_probe(struct pci_dev *dev,
 
 	if (!(ohci->quirks & QUIRK_NO_MSI))
 		pci_enable_msi(dev);
-	err = devm_request_irq(&dev->dev, dev->irq, irq_handler,
-			       pci_dev_msi_enabled(dev) ? 0 : IRQF_SHARED, ohci_driver_name, ohci);
-	if (err < 0) {
+	if (request_irq(dev->irq, irq_handler,
+			pci_dev_msi_enabled(dev) ? 0 : IRQF_SHARED,
+			ohci_driver_name, ohci)) {
 		ohci_err(ohci, "failed to allocate interrupt %d\n", dev->irq);
+		err = -EIO;
 		goto fail_msi;
 	}
 
 	err = fw_card_add(&ohci->card, max_receive, link_speed, guid);
 	if (err)
-		goto fail_msi;
+		goto fail_irq;
 
 	version = reg_read(ohci, OHCI1394_Version) & 0x00ff00ff;
 	ohci_notice(ohci,
@@ -3772,8 +3773,9 @@ static int pci_probe(struct pci_dev *dev,
 
 	return 0;
 
+ fail_irq:
+	free_irq(dev->irq, ohci);
  fail_msi:
-	devm_free_irq(&dev->dev, dev->irq, ohci);
 	pci_disable_msi(dev);
 
 	return err;
@@ -3801,7 +3803,7 @@ static void pci_remove(struct pci_dev *dev)
 
 	software_reset(ohci);
 
-	devm_free_irq(&dev->dev, dev->irq, ohci);
+	free_irq(dev->irq, ohci);
 	pci_disable_msi(dev);
 
 	dev_notice(&dev->dev, "removing fw-ohci device\n");
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
