Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5718446625E
	for <lists+linux1394-devel@lfdr.de>; Thu,  2 Dec 2021 12:35:26 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1mskMw-0002rL-Pt; Thu, 02 Dec 2021 11:35:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1mskMv-0002r4-Mq
 for linux1394-devel@lists.sourceforge.net; Thu, 02 Dec 2021 11:35:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dSfEsYJV8YT9G1mY+w+3xNKGP/jLbaYvgOYk7MgI61U=; b=SxEqSLopuNrIP+yhwJKki2q4MQ
 wao6+I+a/0ciXaPlT6rzqTiY+Jp+eg/RqkSAnX3yrveBHjmStfXRi0UfMMpCVe3Z46hvGCrrBsVM9
 LmDCq8AT4hKugWOLqZEgQjuKegFh7yjXPJG4YaLIohUgFaZTunXU36Gzu+SZAZouJqTk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dSfEsYJV8YT9G1mY+w+3xNKGP/jLbaYvgOYk7MgI61U=; b=V7pojCijOS7rRkPmDuz6YeWuVI
 Rd0zq/MooBrOBAXBSb60LOCD5K4PgvHY6IKyXk7ZBiddS69cXtkaHrUY66DGnRNNdOlhFGa0j9a+2
 xp4LlofVI41OeML/G814thCs5K7EUwCMjER9yfAFn8nUcUrhAknt/+Rbiyt73gesBvbg=;
Received: from wout4-smtp.messagingengine.com ([64.147.123.20])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mskMv-0001cz-1G
 for linux1394-devel@lists.sourceforge.net; Thu, 02 Dec 2021 11:35:17 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailout.west.internal (Postfix) with ESMTP id DCB5E3200FA9;
 Thu,  2 Dec 2021 06:35:10 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Thu, 02 Dec 2021 06:35:11 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=dSfEsYJV8YT9G
 1mY+w+3xNKGP/jLbaYvgOYk7MgI61U=; b=LFxFkEKNZPPy+UrCGmddyYj4Yfucl
 1oH7uT0osUDuvU/E00EgKYNj6kciaOeNHK0sPoQkiGzjyV//d7nz/L6O1K0VYKdR
 emRZFjNvQL4KzUtZfb7prMMX4KVAaRYd4lShb14vg6aCJORHFABKCQ5sy73hcpez
 tYwpYkhrj3qGnipxLtjQ9pUmJRnfalPRlUVoImGefW6fn+QJedL+Nzm1eRr79wff
 C4EXTliiOhtvzbxg7VCvE4unKaSnPo0GkgsUQLMg28CQrjiNKDqH3RGSGz/SX9L/
 DDh7MGQr7ChMmFrLAIcZ6oIqc4hDivRYqRmV3vFYXYp8MAlXCJXsIaauQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=dSfEsYJV8YT9G1mY+w+3xNKGP/jLbaYvgOYk7MgI61U=; b=H2MbYVzw
 irJUbwSjyntpffnMwaKAhWbZLmAJM9P2j1/X8ffK3OFzfVFcqI60Nx/elApANE0F
 KYyABJ10LaVIyfwaF4nr5mym3uo5aqthfg8Qw/04rsUq7I68ysKfFpnlG0eNtTW1
 KGRxcj3eElEjswcHNtVNaTZibrhnC1/g4zOguiIqiVYXY0u2fE2lzCD8KfpUZRJJ
 Khy0U+yroKjaDIRn/VbzTaQ3WNEplHQ6nIoEYgDYU3yIDd/GycoWTC+LP3gujDsb
 tpTpKl0Pr6L9goCN7OANEQGvyHAAo1k+U0nvg3YbRcgjFr3SAJ/EAvIDdzxN2svS
 baPASCXp3ObzJQ==
X-ME-Sender: <xms:ba-oYRak8gf3eXySuD9cs_VPsw-Uqd7Uq52YDfiuXAkH0yFJFcyLLg>
 <xme:ba-oYYa9-QE6Njg288f7ZFU9KI991sqplxWUP-aEgQkrRomxXjAXV5qnmQ55w2DIq
 G37SCkHREI3f6W4c7Q>
X-ME-Received: <xmr:ba-oYT9uhBrxHQI1sZwxZBpnG7iQJhX_7dkse6B6ApFMmpIGYkHH0aUqkV-Ibx509pArNeRDzWK9HXoFQqCuaiX2rHKGrVPWj6rjzIrIX-0B5IXBl1Za>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvuddrieehgdeftdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeevfefffeekte
 fgveegfeelheffhfeujedtjeevtefhkeevkedtjeejvddtjefhjeenucevlhhushhtvghr
 ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrg
 hkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:ba-oYfr2Zs5YtpPUkhIBk7ZYc8SkZC8TK_LK6d9QY4cTu8v-3Db4_A>
 <xmx:ba-oYcqIdxoG6zr71RvtaSngB9ODpJ_6-QPBxgqASazlyznsJ8ZcCg>
 <xmx:ba-oYVRW6XAwzkY4EDvHZc1Yq2V7uOO4oK6PMf2PPAlrcinPZavezQ>
 <xmx:bq-oYVm5tmqEg5yQkleF8KR29dWlvgSdXyFaMz6NC5f9kYWO_AjJmQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 2 Dec 2021 06:35:08 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: stefanr@s5r6.in-berlin.de
Subject: [PATCH 2/3] firewire: add kernel API to access CYCLE_TIME register
Date: Thu,  2 Dec 2021 20:34:56 +0900
Message-Id: <20211202113457.24011-3-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211202113457.24011-1-o-takashi@sakamocchi.jp>
References: <20211202113457.24011-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: 1394 OHCI specification defined Isochronous Cycle Timer
 Register
 to get value of CYCLE_TIME register defined by IEEE 1394 for CSR architecture
 defined by ISO/IEC 13213. Unit driver can calculate packe [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.20 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [64.147.123.20 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1mskMv-0001cz-1G
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
 linux-kernel@vger.kernel.org, marcan@marcan.st
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

1394 OHCI specification defined Isochronous Cycle Timer Register to get
value of CYCLE_TIME register defined by IEEE 1394 for CSR architecture
defined by ISO/IEC 13213. Unit driver can calculate packet time by
compute with the value of CYCLE_TIME and timeStamp field in descriptor
of each isochronous and asynchronous context. The resolution of CYCLE_TIME
is 49.576 MHz, while the one of timeStamp is 8,000 Hz.

Current implementation of Linux FireWire subsystem allows the driver to
get the value of CYCLE_TIMER CSR register by transaction service. The
transaction service has overhead in regard of access to MMIO register.

This commit adds kernel API for unit driver to access the register
directly.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-card.c | 28 ++++++++++++++++++++++++++++
 drivers/firewire/core-cdev.c |  6 ++++--
 include/linux/firewire.h     |  2 ++
 3 files changed, 34 insertions(+), 2 deletions(-)

diff --git a/drivers/firewire/core-card.c b/drivers/firewire/core-card.c
index d994da6cf465..cd09de61bc4f 100644
--- a/drivers/firewire/core-card.c
+++ b/drivers/firewire/core-card.c
@@ -702,3 +702,31 @@ void fw_core_remove_card(struct fw_card *card)
 	WARN_ON(!list_empty(&card->transaction_list));
 }
 EXPORT_SYMBOL(fw_core_remove_card);
+
+/**
+ * fw_card_read_cycle_time: read from Isochronous Cycle Timer Register of 1394 OHCI in MMIO region
+ *			    for controller card.
+ * @card: The instance of card for 1394 OHCI controller.
+ * @cycle_time: The mutual reference to value of cycle time for the read operation.
+ *
+ * Read value from Isochronous Cycle Timer Register of 1394 OHCI in MMIO region for the given
+ * controller card. This function accesses the region without any lock primitives or IRQ mask.
+ * When returning successfully, the content of @value argument has value aligned to host endianness,
+ * formetted by CYCLE_TIME CSR Register of IEEE 1394 std.
+ *
+ * Context: Any context.
+ * Return:
+ * * 0 - Read successfully.
+ * * -ENODEV - The controller is unavailable due to being removed or unbound.
+ */
+int fw_card_read_cycle_time(struct fw_card *card, u32 *cycle_time)
+{
+	if (card->driver->read_csr == dummy_read_csr)
+		return -ENODEV;
+
+	// It's possible to switch to dummy driver between the above and the below. This is the best
+	// effort to return -ENODEV.
+	*cycle_time = card->driver->read_csr(card, CSR_CYCLE_TIME);
+	return 0;
+}
+EXPORT_SYMBOL_GPL(fw_card_read_cycle_time);
diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index 9f89c17730b1..8e9670036e5c 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -1216,7 +1216,9 @@ static int ioctl_get_cycle_timer2(struct client *client, union ioctl_arg *arg)
 
 	local_irq_disable();
 
-	cycle_time = card->driver->read_csr(card, CSR_CYCLE_TIME);
+	ret = fw_card_read_cycle_time(card, &cycle_time);
+	if (ret < 0)
+		goto end;
 
 	switch (a->clk_id) {
 	case CLOCK_REALTIME:      ktime_get_real_ts64(&ts);	break;
@@ -1225,7 +1227,7 @@ static int ioctl_get_cycle_timer2(struct client *client, union ioctl_arg *arg)
 	default:
 		ret = -EINVAL;
 	}
-
+end:
 	local_irq_enable();
 
 	a->tv_sec      = ts.tv_sec;
diff --git a/include/linux/firewire.h b/include/linux/firewire.h
index 07967a450eaa..2f467c52bdec 100644
--- a/include/linux/firewire.h
+++ b/include/linux/firewire.h
@@ -150,6 +150,8 @@ static inline void fw_card_put(struct fw_card *card)
 	kref_put(&card->kref, fw_card_release);
 }
 
+int fw_card_read_cycle_time(struct fw_card *card, u32 *cycle_time);
+
 struct fw_attribute_group {
 	struct attribute_group *groups[2];
 	struct attribute_group group;
-- 
2.32.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
