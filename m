Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1233443C8D3
	for <lists+linux1394-devel@lfdr.de>; Wed, 27 Oct 2021 13:47:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1mfhP2-00044o-NS; Wed, 27 Oct 2021 11:47:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <marcan@marcan.st>) id 1mfhP1-00044i-QF
 for linux1394-devel@lists.sourceforge.net; Wed, 27 Oct 2021 11:47:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tzEb0poaaYm3BCpDaAXI5f7ZtpXeqiD7HmQNY9GyB5Y=; b=BrQsItoKCdLY5TOFfp1yb0O5yr
 DzKwA7O+vnsY13c+a1f0h6SfxDckPyLaPiGCEo7/6yffuX47QO/LIhFztwj4LhaAW2+7+mbIawMaI
 GueNZ0x/XikPTTlQd6k8c/fLhVXTxsoxoKURc6C6SavAnj2y0PF7O38JtOKrA11OlQR8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=tzEb0poaaYm3BCpDaAXI5f7ZtpXeqiD7HmQNY9GyB5Y=; b=j
 kg8jcLLo69idV3Shsr5kkudS9k/+C5M2SCnkTAkzfe9pyBcF7Lte+AneJHG/AHv3xsBlz4ip5uKw7
 1WnAokxZmDY6tPXaPxXNCi+zWH5c4gfyegASOMbzhRLlOAjyhuZF4mzOSF8fpg/o1dh3F4tUOwi1L
 9iPBKyN6qy8BIcSk=;
Received: from marcansoft.com ([212.63.210.85] helo=mail.marcansoft.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mfhOu-0000WT-Bz
 for linux1394-devel@lists.sourceforge.net; Wed, 27 Oct 2021 11:47:30 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 (Authenticated sender: hector@marcansoft.com)
 by mail.marcansoft.com (Postfix) with ESMTPSA id 8363041EE3;
 Wed, 27 Oct 2021 11:31:41 +0000 (UTC)
From: Hector Martin <marcan@marcan.st>
To: Stefan Richter <stefanr@s5r6.in-berlin.de>,
 linux1394-devel@lists.sourceforge.net
Subject: [PATCH] firewire: Add dummy read_csr/write_csr functions
Date: Wed, 27 Oct 2021 20:31:30 +0900
Message-Id: <20211027113130.8802-1-marcan@marcan.st>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This fixes segfaults when a card gets yanked off of the PCIe
 bus while busy,
 e.g. with a userspace app trying to get the cycle time: [8638860.994310]
 Call Trace: [8638860.994313] ioctl_get_cycle_timer2+0x4f/0xd0 [firewire_core]
 [8638860.994323] fw_device_op_ioctl+0xae/0x150 [firewire_core]
 [8638860.994328] __x64_sys_ioctl+0x7d/0xb0 [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1mfhOu-0000WT-Bz
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
Cc: Hector Martin <marcan@marcan.st>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

This fixes segfaults when a card gets yanked off of the PCIe bus while
busy, e.g. with a userspace app trying to get the cycle time:

[8638860.994310] Call Trace:
[8638860.994313]  ioctl_get_cycle_timer2+0x4f/0xd0 [firewire_core]
[8638860.994323]  fw_device_op_ioctl+0xae/0x150 [firewire_core]
[8638860.994328]  __x64_sys_ioctl+0x7d/0xb0
[8638860.994332]  do_syscall_64+0x45/0x80
[8638860.994337]  entry_SYSCALL_64_after_hwframe+0x44/0xae

Signed-off-by: Hector Martin <marcan@marcan.st>
---
 drivers/firewire/core-card.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/firewire/core-card.c b/drivers/firewire/core-card.c
index 54be88167c60..d994da6cf465 100644
--- a/drivers/firewire/core-card.c
+++ b/drivers/firewire/core-card.c
@@ -616,6 +616,15 @@ static struct fw_iso_context *dummy_allocate_iso_context(struct fw_card *card,
 	return ERR_PTR(-ENODEV);
 }
 
+static u32 dummy_read_csr(struct fw_card *card, int csr_offset)
+{
+	return 0;
+}
+
+static void dummy_write_csr(struct fw_card *card, int csr_offset, u32 value)
+{
+}
+
 static int dummy_start_iso(struct fw_iso_context *ctx,
 			   s32 cycle, u32 sync, u32 tags)
 {
@@ -649,6 +658,8 @@ static const struct fw_card_driver dummy_driver_template = {
 	.send_response		= dummy_send_response,
 	.cancel_packet		= dummy_cancel_packet,
 	.enable_phys_dma	= dummy_enable_phys_dma,
+	.read_csr		= dummy_read_csr,
+	.write_csr		= dummy_write_csr,
 	.allocate_iso_context	= dummy_allocate_iso_context,
 	.start_iso		= dummy_start_iso,
 	.set_iso_channels	= dummy_set_iso_channels,
-- 
2.33.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
