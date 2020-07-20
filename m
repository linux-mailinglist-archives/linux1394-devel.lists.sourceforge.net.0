Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5237F2262FC
	for <lists+linux1394-devel@lfdr.de>; Mon, 20 Jul 2020 17:10:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1jxXQO-0000Gz-Cj; Mon, 20 Jul 2020 15:09:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <vaibhavgupta40@gmail.com>) id 1jxXQN-0000Gs-Le
 for linux1394-devel@lists.sourceforge.net; Mon, 20 Jul 2020 15:09:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=P2mRU9DML+WlUjG+x0KgX1XxnekTukVWP0rhuq7mq9o=; b=Z3Si/mlvpzYlc5WSYLJ9MInH3S
 btTAoIT4vV/GWIumJCVdO2XhRmF2ELGHB5vFHVcosF3GzIt7i0fpTsWeyCVrBoL8AsCZ2B5JJqEqH
 xMht+w273imh9BNIQ3Zu0hUx3FQP08WUg/hCg7/kLNb1aQgDqwPhxvd1e9NfqrsKH/E4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=P2mRU9DML+WlUjG+x0KgX1XxnekTukVWP0rhuq7mq9o=; b=a
 ceJdmrdvqruJ+6CSVP7+cr5+iRZtA1L82/LWKVDl9treZoSt08VPz7+cM7cJJ2ijJy+e0+qUvLf9L
 QJ8A3QKQC+qvNzMTIgjxAJmeBUM0bsoUILq7WJ836UCcfWVnU7M2bj476BBKjSLAzie9qUvgm0FhU
 kAus7Rxqs+uNms8E=;
Received: from mail-pg1-f196.google.com ([209.85.215.196])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jxXQJ-001gjv-JI
 for linux1394-devel@lists.sourceforge.net; Mon, 20 Jul 2020 15:09:51 +0000
Received: by mail-pg1-f196.google.com with SMTP id p3so10431783pgh.3
 for <linux1394-devel@lists.sourceforge.net>;
 Mon, 20 Jul 2020 08:09:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=P2mRU9DML+WlUjG+x0KgX1XxnekTukVWP0rhuq7mq9o=;
 b=pF2xi4w6gHUB6KW6oVO8ioBNFr4YuhVG9jm+hW8Zh4OrXm28Dd17IN8/kmz4H2P4oc
 ISGLz5n0zY0gA4ad2Nx38ctTepSAW3OALHb1zN8K6Foel9279E6gvQzFhrN82mLQEUZx
 JtTx7YTY52uGnM7rUnkEKUNfZ5yXRDy+6YhHrJT25y0ZJp+NFT+LL0kSBcOM/HN1FHI2
 7rKtd/WT8rLzBvDXhQRMK6ZbtG+d6L2A3iOCg7XUWIB+Qu4xFimDWE0vVwJjo/C5Z7bA
 qnFxGBBONqB9BmFEE4Ur0rP0MBBcQcngNzyZVAUsoN4RkyGlSQwe/Ba/aWdcLt2yeJwY
 cw9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=P2mRU9DML+WlUjG+x0KgX1XxnekTukVWP0rhuq7mq9o=;
 b=oj950azVtrWG1O3fhISkAkqmBb74h5FDWa5C9hqccyJ48IBybN40MRFWB4PvYCQ06u
 QeMlT0ruOnVhyBdOQaM3ePnvNndQsvmzYs2f6UO3ApIAqKdGujgd79qPWArwuI183p8y
 +wUJ3d8oHlkLSHMpj587Cs923w3p8TvJyMDmHTNeT9pBLTYzOYBtd9s1X+liaHj9adWH
 LG4DM9uD/OWyzHgrHyM6B6h2xUxp72GZgV/yh06QG/4p3GFwXRw3IqcAu66gMhj8jVBf
 99sTUY85gxjI7TkQPkuNE8W14fQSa1Ng7+D7iaSzbJdN3PFGFyUudg4bFdD5hw420Oec
 IRYQ==
X-Gm-Message-State: AOAM530MDih29z3CehIGIPlal21exeGZoD9Fin1n898E3xTn4U+Y5+K2
 XWrp8PoQ8ODoH2IH3B1sdJ/TnxCaaOvVdQ==
X-Google-Smtp-Source: ABdhPJws8JrM5TULRLzImq9oyGdayyre0j2HUv0+tiud6sIC2oAR/xrn7Ia6p4g9JrdCMX4x7qpP9Q==
X-Received: by 2002:aa7:9155:: with SMTP id 21mr19004277pfi.306.1595257779413; 
 Mon, 20 Jul 2020 08:09:39 -0700 (PDT)
Received: from varodek.iballbatonwifi.com ([103.105.153.67])
 by smtp.gmail.com with ESMTPSA id f207sm17723624pfa.107.2020.07.20.08.09.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Jul 2020 08:09:38 -0700 (PDT)
From: Vaibhav Gupta <vaibhavgupta40@gmail.com>
To: Bjorn Helgaas <helgaas@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Bjorn Helgaas <bjorn@helgaas.com>,
 Vaibhav Gupta <vaibhav.varodek@gmail.com>,
 Stefan Richter <stefanr@s5r6.in-berlin.de>
Subject: [PATCH v1] firewire: ohci: use generic power management
Date: Mon, 20 Jul 2020 20:37:16 +0530
Message-Id: <20200720150715.624520-1-vaibhavgupta40@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (vaibhavgupta40[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (vaibhavgupta40[at]gmail.com)
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.6 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jxXQJ-001gjv-JI
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
Cc: Shuah Khan <skhan@linuxfoundation.org>,
 linux1394-devel@lists.sourceforge.net,
 linux-kernel-mentees@lists.linuxfoundation.org, linux-kernel@vger.kernel.org,
 Vaibhav Gupta <vaibhavgupta40@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Drivers using legacy PM have to manage PCI states and device's PM states
themselves. They also need to take care of configuration registers.

With improved and powerful support of generic PM, PCI Core takes care of
above mentioned, device-independent, jobs.

This driver makes use of PCI helper functions like
pci_save/restore_state(), pci_disable_device() and pci_set_power_state() to
do required operations. In generic mode, they are no longer needed.

Change function parameter in both .suspend() and .resume() to
"struct device*" type. Use to_pci_dev() to get "struct pci_dev*" variable.

Compile-tested only.

Signed-off-by: Vaibhav Gupta <vaibhavgupta40@gmail.com>
---
 drivers/firewire/ohci.c | 43 ++++++++++++-----------------------------
 1 file changed, 12 insertions(+), 31 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 54fdc39cd0bc..2d19db5e81a1 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -3169,8 +3169,7 @@ static int ohci_set_iso_channels(struct fw_iso_context *base, u64 *channels)
 	return ret;
 }
 
-#ifdef CONFIG_PM
-static void ohci_resume_iso_dma(struct fw_ohci *ohci)
+static void __maybe_unused ohci_resume_iso_dma(struct fw_ohci *ohci)
 {
 	int i;
 	struct iso_context *ctx;
@@ -3187,7 +3186,6 @@ static void ohci_resume_iso_dma(struct fw_ohci *ohci)
 			ohci_start_iso(&ctx->base, 0, ctx->sync, ctx->tags);
 	}
 }
-#endif
 
 static int queue_iso_transmit(struct iso_context *ctx,
 			      struct fw_iso_packet *packet,
@@ -3793,39 +3791,24 @@ static void pci_remove(struct pci_dev *dev)
 	dev_notice(&dev->dev, "removed fw-ohci device\n");
 }
 
-#ifdef CONFIG_PM
-static int pci_suspend(struct pci_dev *dev, pm_message_t state)
+static int __maybe_unused pci_suspend(struct device *dev)
 {
-	struct fw_ohci *ohci = pci_get_drvdata(dev);
-	int err;
+	struct pci_dev *pdev = to_pci_dev(dev);
+	struct fw_ohci *ohci = pci_get_drvdata(pdev);
 
 	software_reset(ohci);
-	err = pci_save_state(dev);
-	if (err) {
-		ohci_err(ohci, "pci_save_state failed\n");
-		return err;
-	}
-	err = pci_set_power_state(dev, pci_choose_state(dev, state));
-	if (err)
-		ohci_err(ohci, "pci_set_power_state failed with %d\n", err);
-	pmac_ohci_off(dev);
+	pmac_ohci_off(pdev);
 
 	return 0;
 }
 
-static int pci_resume(struct pci_dev *dev)
+static int __maybe_unused pci_resume(struct device *dev)
 {
-	struct fw_ohci *ohci = pci_get_drvdata(dev);
+	struct pci_dev *pdev = to_pci_dev(dev);
+	struct fw_ohci *ohci = pci_get_drvdata(pdev);
 	int err;
 
-	pmac_ohci_on(dev);
-	pci_set_power_state(dev, PCI_D0);
-	pci_restore_state(dev);
-	err = pci_enable_device(dev);
-	if (err) {
-		ohci_err(ohci, "pci_enable_device failed\n");
-		return err;
-	}
+	pmac_ohci_on(pdev);
 
 	/* Some systems don't setup GUID register on resume from ram  */
 	if (!reg_read(ohci, OHCI1394_GUIDLo) &&
@@ -3842,7 +3825,6 @@ static int pci_resume(struct pci_dev *dev)
 
 	return 0;
 }
-#endif
 
 static const struct pci_device_id pci_table[] = {
 	{ PCI_DEVICE_CLASS(PCI_CLASS_SERIAL_FIREWIRE_OHCI, ~0) },
@@ -3851,15 +3833,14 @@ static const struct pci_device_id pci_table[] = {
 
 MODULE_DEVICE_TABLE(pci, pci_table);
 
+static SIMPLE_DEV_PM_OPS(pci_pm_ops, pci_suspend, pci_resume);
+
 static struct pci_driver fw_ohci_pci_driver = {
 	.name		= ohci_driver_name,
 	.id_table	= pci_table,
 	.probe		= pci_probe,
 	.remove		= pci_remove,
-#ifdef CONFIG_PM
-	.resume		= pci_resume,
-	.suspend	= pci_suspend,
-#endif
+	.driver.pm	= &pci_pm_ops,
 };
 
 static int __init fw_ohci_init(void)
-- 
2.27.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
