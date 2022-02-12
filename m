Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A9714B329F
	for <lists+linux1394-devel@lfdr.de>; Sat, 12 Feb 2022 03:22:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1nIi2t-0006NI-8L; Sat, 12 Feb 2022 02:21:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1nIi2q-0006N9-1X
 for linux1394-devel@lists.sourceforge.net; Sat, 12 Feb 2022 02:21:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JWFE8l2LwYg3yXaZ5RQpFz+ELRAlfDvXI+Y8nvTXfcI=; b=ajWjcnSG+3Xf/tjsu6YUWx9Ckf
 XIA39SmrAmqxmACrPbnxM4DhykctCBNs4NERkwmYEIe142JoCGrY7Iz9F7G6JlRgoHxYAOG4B7fqM
 JxsaDp8UVNtncehAqGCiEmai/MHDidQ94Ek26gXYYYv3fzNLO3S7rVs8zZzcKFicku7I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JWFE8l2LwYg3yXaZ5RQpFz+ELRAlfDvXI+Y8nvTXfcI=; b=QvrFyIO9P8IS90u1Ld6jUeGZy1
 8lxhymdZqwyHuxrNZFMYFaPHEbs5+j0pos8StrUpXstnk3GCBHSAyZqhxKFo3umZAnLk6orxCoOzZ
 hjua7Fe4MrFXQa9ysBk3BeiQIE6fw77Osna1+i4e+mKtwucczaIbL8ZXA1rJTJ+sMEcM=;
Received: from wout1-smtp.messagingengine.com ([64.147.123.24])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nIi2n-0007CO-G6
 for linux1394-devel@lists.sourceforge.net; Sat, 12 Feb 2022 02:21:50 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id E01A73200EF5;
 Fri, 11 Feb 2022 21:21:41 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Fri, 11 Feb 2022 21:21:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm3; bh=JWFE8l2LwYg3yX
 aZ5RQpFz+ELRAlfDvXI+Y8nvTXfcI=; b=SU9TfOAmfOd2RM33aQTVx90C+2btNl
 kbRTDHWoFEdvBSZd8FVCz22OvfVC43SD+AHe8K2KPqsLguMYkUtkrmJHVsElN+Xb
 deAYrDCFEnnZvtKbqomgnvu4npNvGbG929/fDNSheun87gvFZANqIyEOQ60IThnZ
 JXJgVvY2EvqF6d5OUCUSpZDNcNFJCjApibBQXqQ93VVfV0w1CJNblvcfM9aCtQDo
 JWsgkYyKDTsLk4Sm3FI6IC6+Oh+88exeCqrG3x4wGEdxQ9HEE/WbjqYPySR5we+D
 zKTPCeR0P0whGf837YCyA/lh5qLceXOv1x8RkpSctICKGZeESL4QuJaA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:sender:subject:subject:to:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=JWFE8l
 2LwYg3yXaZ5RQpFz+ELRAlfDvXI+Y8nvTXfcI=; b=iybvG0IkqLctK1+15AJAw/
 W3C6vogCbXckVWkMJSUYxy/1Sr0pnYh5vQ23zfgxuvHxyUWB0go30Eyaa6JlTssk
 DBJF0gTam3pggSg/BPwkNNcEpj6JEXNwqgWBJ8E41kcAx9HAEsP6NJFeM3hqS3iy
 si+YK1106ucaPdIYl5ZoI6L5UbrUPuIU8wfjj61DllkOnjOB86TbzKzckqrIR/Xz
 MQ1ksJWYKpHFm2mJjdDHgAxDbg9//0Og8O7wbl4ZXCsQ2JAvS7WsWKuRszHwNWjF
 9zYXl8lSZYWIj6Q9NtV3b4hn/R02yb5cl9XrSzPY28gpH0Q6ebrkwXcuNjujz5iw
 ==
X-ME-Sender: <xms:tBkHYsn-1cEYm0O_RKFXOOpiTkJ5XYea1oGMC1v3RuhAzytncQIK1g>
 <xme:tBkHYr0tSEKXxjRGyXnsg1KqycdqXSFm0HluQVWSqcmyJfvtQ0gfk7BIo52OMjDGa
 wr-J6CAp5hyKqVr_5A>
X-ME-Received: <xmr:tBkHYqqfbxlgxEQ7bOqxbZQFEJrKTEUPka553etWjwtLgiuGbkSl2B0stLYskcn_a-0oIlbotsrnQ7mecmW-mIk84xfTa-Q6I43pU7ixSl6dqqAkRabl>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrieeggdeghecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeevfefffeekte
 fgveegfeelheffhfeujedtjeevtefhkeevkedtjeejvddtjefhjeenucevlhhushhtvghr
 ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrg
 hkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:tBkHYokjlf9CyHlpxIyjnt8ZbI4jj-lpmYFL85KRqprE2X5ZkLKpzw>
 <xmx:tBkHYq37_Jw04tE_cHMjw_CKWP13L88dn9HCK5X9DpJWcVIkeyd89w>
 <xmx:tBkHYvsyN6yKMkLLw2wwxKr2DG_W2cWj9gpOPqSiQJVeVeLsXnuKug>
 <xmx:tRkHYtQeSoVt8OsOPJMO2CADQVuOIklb1kL0L_i8Kou1vQpJ2DJkdA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 11 Feb 2022 21:21:39 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: stefanr@s5r6.in-berlin.de
Subject: [PATCH v2 1/3] firewire: Add dummy read_csr/write_csr functions
Date: Sat, 12 Feb 2022 11:21:29 +0900
Message-Id: <20220212022131.199855-2-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220212022131.199855-1-o-takashi@sakamocchi.jp>
References: <20220212022131.199855-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Hector Martin <marcan@marcan.st> (Hector Martin wrote)
 This fixes segfaults when a card gets yanked off of the PCIe bus while busy,
 e.g. with a userspace app trying to get the cycle time: [8638860.994310]
 Call Trace: [8638860.994313] ioctl_get_cycle_timer2+0x4f/0xd0 [firewire_core]
 [8638860.994323] fw_device_op_ioctl+0xae/0x150 [firewire_core]
 [8638860.994328] __x64_sys_ioctl+0x7d/0xb0 [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nIi2n-0007CO-G6
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
Cc: alsa-devel@alsa-project.org, linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, Hector Martin <marcan@marcan.st>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

From: Hector Martin <marcan@marcan.st>

(Hector Martin wrote)
This fixes segfaults when a card gets yanked off of the PCIe bus while
busy, e.g. with a userspace app trying to get the cycle time:

[8638860.994310] Call Trace:
[8638860.994313]  ioctl_get_cycle_timer2+0x4f/0xd0 [firewire_core]
[8638860.994323]  fw_device_op_ioctl+0xae/0x150 [firewire_core]
[8638860.994328]  __x64_sys_ioctl+0x7d/0xb0
[8638860.994332]  do_syscall_64+0x45/0x80
[8638860.994337]  entry_SYSCALL_64_after_hwframe+0x44/0xae

(Takashi Sakamoto wrote)
As long as reading commit 20802224298c ("firewire: core: add forgotten
dummy driver methods, remove unused ones"), three functions are not
implemeted in dummy driver for reason; .read_csr, .write_csr, and
.set_config_rom.

In core of Linux FireWire subsystem, the callback of .set_config_rom is
under acquisition of mutual exclusive for local list of card. The
acquision is also done in process for removal of card, therefore it's
safe for missing implementation of .set_config_rom.

On the other hand, no lock primitive accompanies any call of .read_csr and
.write_csr. For userspace client, check of node shutdown is done in the
beginning of dispatch of ioctl request, while node shifts to shutdown
state in workqueue context enough after card shifts to dummy driver. It's
probable that these two functions are called for the dummy driver by the
code of userspace client. In-kernel unit driver has similar situation.
It's better to add implementation of the two functions for dummy driver.

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
2.32.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
