Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BAD17880E63
	for <lists+linux1394-devel@lfdr.de>; Wed, 20 Mar 2024 10:14:50 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rms1o-00052X-2X;
	Wed, 20 Mar 2024 09:14:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <adamg@pobox.com>) id 1rms1m-00051u-L9
 for linux1394-devel@lists.sourceforge.net;
 Wed, 20 Mar 2024 09:14:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zt1viFNXe7A37eXRcGK4P50LWhIMbejq0Kb+HSc78IQ=; b=du+h7+hueBKD5wlze1dbor7Bbm
 82N/pXytO09S5djx0K3g9D6YCmD4HmHtPJa+/QyL59thpJK3tO+MKOTyvx5PPs2hmHQVc937oBnHF
 WkVtbcHJjoIT8XjnKLqxd+PTtjS+HyR46KhNCvpM3mpT9YvSYKWfeRdupk9BjfAc0Rus=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=zt1viFNXe7A37eXRcGK4P50LWhIMbejq0Kb+HSc78IQ=; b=U
 t3oGMxqS67r+myPg5zzbd0KFmXY3hN4mr2CGp612ZGmHEDBrRx1wEx82AdEoyCciUpWZpwfIKnw1r
 TebG+05uFQvusWtuLvpgRaGwcC7R5VS3Uu5CfJldY0wbHA4CDP5b8p7lP+fRqgaKtxi0NnWVxCXT2
 LwGTnkpvvqREoGpU=;
Received: from pb-smtp2.pobox.com ([64.147.108.71])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rms1a-00021R-SU for linux1394-devel@lists.sourceforge.net;
 Wed, 20 Mar 2024 09:14:30 +0000
Received: from pb-smtp2.pobox.com (unknown [127.0.0.1])
 by pb-smtp2.pobox.com (Postfix) with ESMTP id A4B561DBB70
 for <linux1394-devel@lists.sourceforge.net>;
 Wed, 20 Mar 2024 05:14:15 -0400 (EDT) (envelope-from adamg@pobox.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=pobox.com; h=date:from
 :to:subject:message-id:mime-version:content-type; s=sasl; bh=Emh
 EFTWE/3FwXKbgubOhv7yohsXurBMK//ulVAqEP5I=; b=pYeLFe6J1ynuxSTU9eb
 WCC6aOZ089AgOfjqZpiQfPsG79F2rmcqne9sXFGjId7IJECe2veXgg2P5W+I61f+
 4K6dgBMajXBrWD0jBHz4g8oy8vCfWLqOtoSJ1G2pkOiU2NNdODc/fG31obUqLPk0
 MW84RA5PUYwpDOS337Ihg778=
Received: from pb-smtp2.nyi.icgroup.com (unknown [127.0.0.1])
 by pb-smtp2.pobox.com (Postfix) with ESMTP id 9CA191DBB6F
 for <linux1394-devel@lists.sourceforge.net>;
 Wed, 20 Mar 2024 05:14:15 -0400 (EDT) (envelope-from adamg@pobox.com)
Received: from pogo.deviceside.com (unknown [71.19.144.253])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by pb-smtp2.pobox.com (Postfix) with ESMTPSA id 22A531DBB6E
 for <linux1394-devel@lists.sourceforge.net>;
 Wed, 20 Mar 2024 05:14:15 -0400 (EDT) (envelope-from adamg@pobox.com)
Received: from iguana.24-8.net (99-122-168-208.lightspeed.irvnca.sbcglobal.net
 [99.122.168.208])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (prime256v1) server-signature ECDSA (prime256v1)
 server-digest SHA256) (No client certificate requested)
 (Authenticated sender: iguana@pogo.deviceside.com)
 by pogo.deviceside.com (Postfix) with ESMTPSA id EFA61C01CE
 for <linux1394-devel@lists.sourceforge.net>;
 Wed, 20 Mar 2024 02:14:13 -0700 (PDT)
Date: Wed, 20 Mar 2024 02:14:11 -0700
From: Adam Goldman <adamg@pobox.com>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH] firewire: core: option to log bus reset initiation
Message-ID: <Zfqo43xhFluOgO01@iguana.24-8.net>
MIME-Version: 1.0
Content-Disposition: inline
X-Pobox-Relay-ID: 390D0656-E69A-11EE-87BA-25B3960A682E-07713566!pb-smtp2.pobox.com
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Add a debug parameter to firewire-core, analogous to the one
 in firewire-ohci. When this is set to 1, log when we schedule, delay, or
 initiate a bus reset. Since FireWire bus resets can originate from [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.108.71 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [64.147.108.71 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rms1a-00021R-SU
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

Add a debug parameter to firewire-core, analogous to the one in 
firewire-ohci. When this is set to 1, log when we schedule, delay, or 
initiate a bus reset. Since FireWire bus resets can originate from any 
node on the bus, specific logging of the resets we initiate provides 
additional insight.

Signed-off-by: Adam Goldman <adamg@pobox.com>
---

--- linux-6.8-rc1.orig/drivers/firewire/core.h	2024-01-21 14:11:32.000000000 -0800
+++ linux-6.8-rc1/drivers/firewire/core.h	2024-03-10 03:56:09.000000000 -0700
@@ -238,6 +238,10 @@
 /* OHCI-1394's default upper bound for physical DMA: 4 GB */
 #define FW_MAX_PHYSICAL_RANGE		(1ULL << 32)
 
+#define FW_CORE_PARAM_DEBUG_BUSRESETS	1
+
+extern int fw_core_param_debug;
+
 void fw_core_handle_request(struct fw_card *card, struct fw_packet *request);
 void fw_core_handle_response(struct fw_card *card, struct fw_packet *packet);
 int fw_get_response_length(struct fw_request *request);
--- linux-6.8-rc1.orig/drivers/firewire/core-transaction.c	2024-01-21 14:11:32.000000000 -0800
+++ linux-6.8-rc1/drivers/firewire/core-transaction.c	2024-03-12 02:08:29.000000000 -0700
@@ -1385,5 +1385,12 @@
 	idr_destroy(&fw_device_idr);
 }
 
+int fw_core_param_debug;
+module_param_named(debug, fw_core_param_debug, int, 0644);
+MODULE_PARM_DESC(debug, "Verbose logging (default = 0"
+	", bus resets = "	__stringify(FW_CORE_PARAM_DEBUG_BUSRESETS)
+	")");
+
+
 module_init(fw_core_init);
 module_exit(fw_core_cleanup);
--- linux-6.8-rc1.orig/drivers/firewire/core-card.c	2024-01-21 14:11:32.000000000 -0800
+++ linux-6.8-rc1/drivers/firewire/core-card.c	2024-03-10 03:34:00.000000000 -0700
@@ -221,11 +221,19 @@
 	int reg = short_reset ? 5 : 1;
 	int bit = short_reset ? PHY_BUS_SHORT_RESET : PHY_BUS_RESET;
 
+	if (unlikely(fw_core_param_debug & FW_CORE_PARAM_DEBUG_BUSRESETS))
+		fw_notice(card, "initiating %s bus reset\n",
+		          short_reset ? "short" : "long");
+
 	return card->driver->update_phy_reg(card, reg, 0, bit);
 }
 
 void fw_schedule_bus_reset(struct fw_card *card, bool delayed, bool short_reset)
 {
+	if (unlikely(fw_core_param_debug & FW_CORE_PARAM_DEBUG_BUSRESETS))
+		fw_notice(card, "scheduling %s bus reset\n",
+		          short_reset ? "short" : "long");
+
 	/* We don't try hard to sort out requests of long vs. short resets. */
 	card->br_short = short_reset;
 
@@ -244,6 +252,8 @@
 	/* Delay for 2s after last reset per IEEE 1394 clause 8.2.1. */
 	if (card->reset_jiffies != 0 &&
 	    time_before64(get_jiffies_64(), card->reset_jiffies + 2 * HZ)) {
+		if (unlikely(fw_core_param_debug & FW_CORE_PARAM_DEBUG_BUSRESETS))
+			fw_notice(card, "delaying bus reset\n");
 		if (!queue_delayed_work(fw_workqueue, &card->br_work, 2 * HZ))
 			fw_card_put(card);
 		return;



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
