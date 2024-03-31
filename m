Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6938A8931CB
	for <lists+linux1394-devel@lfdr.de>; Sun, 31 Mar 2024 15:51:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rqvaT-000763-Ji;
	Sun, 31 Mar 2024 13:51:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rqvaR-00075n-KE
 for linux1394-devel@lists.sourceforge.net;
 Sun, 31 Mar 2024 13:51:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=izQDdQ9YH09NT46uOT7yt+MDXit2Qa5tOUgaoIashhQ=; b=AtZh+f5d3t1gpZZpggy6TLTTpy
 RmaPBG/lm35uE5GHzvqFHGXHtA2/N41nvPtFtx+1N5/BecG2lLRyBLhqeJESUIyPv0aBNE6L9vBhD
 +cYVabIsaS8n9hAiCSdJOAA+thQzI+qnVlBcRqKviQOy+CBBCWzYJbBnCtJ/mLUHeeH8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=izQDdQ9YH09NT46uOT7yt+MDXit2Qa5tOUgaoIashhQ=; b=DmjQYNa+opCTPnx8od8PF/5Wa8
 nXfh13h1P+OpAvi7ZkUDxwRbGhC+P7HdP28wn0+WTinq+AYtMrdgEsMonT0Sil4WYwejYvGc5Ay2D
 6QF39/dkoy2rA/j9ViStAPPy32HdcDBI/88VPKcBBb1dqaMvrWBvyiiCQB500R+sX1z0=;
Received: from wfout5-smtp.messagingengine.com ([64.147.123.148])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rqvaN-000404-NS for linux1394-devel@lists.sourceforge.net;
 Sun, 31 Mar 2024 13:51:03 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailfout.west.internal (Postfix) with ESMTP id 5EA0C1C000D0;
 Sun, 31 Mar 2024 09:50:49 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Sun, 31 Mar 2024 09:50:49 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1711893048; x=
 1711979448; bh=izQDdQ9YH09NT46uOT7yt+MDXit2Qa5tOUgaoIashhQ=; b=H
 ueOHeQquuMcR9BvenNaCrsxWiewh44J2HCqmTlZ/6wcVmqpOm8R4Q7AVdd8vm/cg
 vsU8a9jkH4JIfJFQfAwrDJ6P210RIU2O7Qcj8Z3hfA4+0490nikJj3HnMTlV6/2K
 Xv1uU+GXRS39CNiQRNaKeCtxKAYJY4Nydn4Pu0QhxBCd9QmBTZRCyXUcOTK+rsqC
 Q3+z86raVGtpKX8AEfuPDGiHoHWUy3Gm2J5/A0FKd0Gu7GjqMXwNmw7VTPxHJnjF
 UptSUMvmpgnWHQULwAQqKd/TpADQHcBfws2FONnqLSCdgMOlgPpvFUtRnghqr8kL
 cHMzpdm8bqtDJluL8XJLQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1711893048; x=
 1711979448; bh=izQDdQ9YH09NT46uOT7yt+MDXit2Qa5tOUgaoIashhQ=; b=t
 +POq55Ztxx5RIzzNjesxwL0m9yNH70LyT1uUq+ujC2ZNsKa/80XOq0YMB6peIoEN
 yBj2nyBKPfI4xluYOFxqo/+I9xPG6oCAXmOJopbUl+iHCFtS8EH1Ja/KNQcgnTc+
 lLe40HLpfGCorlzzv3pqFJydFlZR3Y9OfoimoPencF7x+vAGkkOOG8qoK/+rVMXV
 bmt309ZBLYOdTEqlINnldQkKzvwk2kN45I4HjbnyiYe8phK0acuw4+TgxNJQd9ZT
 GTLPDx0BBME32KbJeaMZ1PAY+KszV8DrauU6u/DXYssfdrag8iCyWmgxtmOqrnf5
 UpOMhVaBA1TBQQBKaKGSQ==
X-ME-Sender: <xms:OGoJZnB5wkJyRgcHcY_EZpQA80qKXegD47IJpA9qIcRLpc8OoZkSCg>
 <xme:OGoJZthwHoEeq6zn_hLXgH59HjJQUvoK5oIkkg1zlxgOkgW9O_3lrwejvbX3Ayb-G
 cpMqUP38nxfAnTTPi4>
X-ME-Received: <xmr:OGoJZil02KE9RtNYoWNf2saZCM8Q8K6ystO2_2tg8DR4NGj8Reo-SX8RGCrh0kSSNVjfymp4u0wSYPf8i8lpjtGAju2vUd19nKktP7LXNEaU>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledruddvkedggeejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:OGoJZpy3NUqgTZpQM-pAXsnHio_HkFm7oi5ui1-4wK74o-qRL4CPGg>
 <xmx:OGoJZsQZ6aP0FrYdcoozmIfl8KAGd9K-EACDU6g_N5UKhYpB1YPWRw>
 <xmx:OGoJZsas_HDRD9ChVxIU1ZJLxAZoXfkNhBHOBbhPoQ1ggzbXHCtd6Q>
 <xmx:OGoJZtQF9Ys_INhU0-ruCJ8cbsP9Wo5J5xEmlONHp4UKAkrWcv2KFA>
 <xmx:OGoJZielJ1hajzOGGwdMBE_eqvPfk6LblvKgit2XVq9WZ9qtR8-oOsGeRQc>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 31 Mar 2024 09:50:47 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 3/4] firewire: ohci: obsolete usage of deprecated API for MSI
Date: Sun, 31 Mar 2024 22:50:36 +0900
Message-ID: <20240331135037.191479-4-o-takashi@sakamocchi.jp>
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
 Content preview: The usage of the pair of pci_enable_msi() and
 pci_disable_msi()
 is deprecated. This commit uses the preferred pair of API for the purpose.
 The call of pci_alloc_irq_vectors() can have a subeffect to change the return
 value of pci_dev_msi_enabled(). 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.148 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1rqvaN-000404-NS
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

The usage of the pair of pci_enable_msi() and pci_disable_msi() is
deprecated.

This commit uses the preferred pair of API for the purpose. The call of
pci_alloc_irq_vectors() can have a subeffect to change the return value
of pci_dev_msi_enabled().

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index ec02708c5f05..c14e6efaba36 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -3623,7 +3623,7 @@ static int pci_probe(struct pci_dev *dev,
 	struct fw_ohci *ohci;
 	u32 bus_options, max_receive, link_speed, version;
 	u64 guid;
-	int i, err;
+	int i, flags, err;
 	size_t size;
 
 	if (dev->vendor == PCI_VENDOR_ID_PINNACLE_SYSTEMS) {
@@ -3748,8 +3748,13 @@ static int pci_probe(struct pci_dev *dev,
 	guid = ((u64) reg_read(ohci, OHCI1394_GUIDHi) << 32) |
 		reg_read(ohci, OHCI1394_GUIDLo);
 
+	flags = PCI_IRQ_INTX;
 	if (!(ohci->quirks & QUIRK_NO_MSI))
-		pci_enable_msi(dev);
+		flags |= PCI_IRQ_MSI;
+	err = pci_alloc_irq_vectors(dev, 1, 1, flags);
+	if (err < 0)
+		return err;
+
 	err = request_threaded_irq(dev->irq, irq_handler, NULL,
 				   pci_dev_msi_enabled(dev) ? 0 : IRQF_SHARED, ohci_driver_name,
 				   ohci);
@@ -3776,7 +3781,7 @@ static int pci_probe(struct pci_dev *dev,
  fail_irq:
 	free_irq(dev->irq, ohci);
  fail_msi:
-	pci_disable_msi(dev);
+	pci_free_irq_vectors(dev);
 
 	return err;
 }
@@ -3804,7 +3809,7 @@ static void pci_remove(struct pci_dev *dev)
 	software_reset(ohci);
 
 	free_irq(dev->irq, ohci);
-	pci_disable_msi(dev);
+	pci_free_irq_vectors(dev);
 
 	dev_notice(&dev->dev, "removing fw-ohci device\n");
 }
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
