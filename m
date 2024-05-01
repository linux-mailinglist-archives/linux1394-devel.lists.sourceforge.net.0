Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 175878B8620
	for <lists+linux1394-devel@lfdr.de>; Wed,  1 May 2024 09:33:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1s24T4-0004MN-An;
	Wed, 01 May 2024 07:33:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1s24T3-0004MA-C4
 for linux1394-devel@lists.sourceforge.net;
 Wed, 01 May 2024 07:33:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HgUZJoRk+wcwO/h9C2rYbGduJQggRI/00GIyShHGGpA=; b=SRIr8RCDmuhHx2pUb9mH6LPkGX
 wfBzSUUcmqvNRaDOmyFKv+rUrSbdPZJxsubjOnYQvdobIaRCt+KzmOVNzlIgrZ5ovmIHAB3i2VTnN
 +LurguSCmaMVnUrZg5DDXBn7hLEVmd5SBgnHA2JhjTlhlwowmnKsFaIU0j24UDytUdpE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HgUZJoRk+wcwO/h9C2rYbGduJQggRI/00GIyShHGGpA=; b=Sg/WKJ0g4r2kJNrl27AUgxJHzp
 NVVhbp5evuCrdyFbzqBE+yaHCW0pETvubF63IGbe5sPX133cGcFogRyza5fnAc2td3kfMZrCJdw7V
 2cPMh1uFB9VbkKXAKbmS4XPEKT8w6jw9ziwkv3jD752jNFUyezm9ma0EnsWz/SCBPCl8=;
Received: from wfout7-smtp.messagingengine.com ([64.147.123.150])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s24T2-0003XO-MW for linux1394-devel@lists.sourceforge.net;
 Wed, 01 May 2024 07:33:30 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailfout.west.internal (Postfix) with ESMTP id 84FB31C0010F;
 Wed,  1 May 2024 03:33:18 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Wed, 01 May 2024 03:33:18 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1714548798; x=
 1714635198; bh=HgUZJoRk+wcwO/h9C2rYbGduJQggRI/00GIyShHGGpA=; b=j
 JjUpBCvGeTlsxIUw5HQKZbOWIrlFM2iP6G2ZepoUYd5Gt29KSM4/CJZFSYmIRzRz
 +u6eVG0dXM67eyp3BnKoGX+f8w1oo9JFjWqZS1QkawrgiHDCDouq68o2bEOfv2t9
 mo+3HWO20Hasist7d1c4w8K1S3Q8ZgHIKTJRO/+XBx3NlKPVh0Ay0YKb4TAJhl28
 3lkzeottPpmEJJpJiJwclzAzdIMGRdZ4Lu3epiMetomIY1fUlziieHHah1D+PVUS
 Psdn/UpY5/xLlUQWILauoEVLBHSXTokPw4h41rXVf8//XR3nxMXXHJRDjqQCVxdQ
 jIiyczxX/kBM/2TYKYpww==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1714548798; x=
 1714635198; bh=HgUZJoRk+wcwO/h9C2rYbGduJQggRI/00GIyShHGGpA=; b=c
 Po1tp9u76EPuscnqfGXwz5UmsjcEwPZhrpc67yjjicwV7mlTve3sYmyksanIdwn+
 oeaKJGjEuYpWT020fQ14IBoIoy++syarHuuCU1XqemzTSWnvimgVIozZSkvPpdJw
 AP+B0V80+g74fWqraAPL5J7nfzwJHJEgpyLYiMBQtghPf3CcbFI3zPt6ScONqaxx
 +T5xjWKvDUiJ9prJX5EFKuv6PDUQqcVXIh9fUTMFHUHDC4lgOSPokiWjNp98u0b2
 Afw7JfXF1R7gEjmNZtEr+RX0uOh8yNFKBsXpMAvqLl+jNuQt7JRtIaesC3OqwIlJ
 m5liOmWq8A7RIvnmWGI8A==
X-ME-Sender: <xms:PfAxZtj_wJZtGrIWvLh16q9xi-fYiw3QVNPXDJ-P9MGg_p8Lr2JExg>
 <xme:PfAxZiAbHwlnhik3biIruyc1gdn-3pSpLWcfLrUwpfHrwpIBMX895C4t4wJlCoRtG
 GfbYUJZN8c9Lj44ooE>
X-ME-Received: <xmr:PfAxZtGkfY3ClifFosRA0UkZQHWfKh5-ANYsDhOvbbb8QNCszi5BdPia9EyJStUtknFfHeJ30htF4Eigco778I3SVSNtGPnuyZOs_tUSLBZeZ-8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvdduhedggeeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:PvAxZiRfIpQ8Btp6Uec83rtfI7or_rN1S3YI6SCSTaGDqjDDIrRFyg>
 <xmx:PvAxZqyekB2rsp3hcUHAt2T_xYtfo8Hgsd__vbjY47zVoS3DV_u_KQ>
 <xmx:PvAxZo6zmHThkI3jNoG3PFIkW90jcoMC11GD1ZNTEOSg1b-EOW9OMA>
 <xmx:PvAxZvyY2_P7EdLpL3zWblaemB2Q0Xm0_W6MC2JJj1icHV3-JmkrpA>
 <xmx:PvAxZu-8YurkUelixSzAtrrK6Wk29Kj4QowyeA6T5fMPyfskETgH_926>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 1 May 2024 03:33:16 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 4/5] Revert "firewire: core: option to log bus reset
 initiation"
Date: Wed,  1 May 2024 16:32:37 +0900
Message-ID: <20240501073238.72769-5-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240501073238.72769-1-o-takashi@sakamocchi.jp>
References: <20240501073238.72769-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This reverts commit 6732491243045f5a7e1995b4be5f3c964b579ebd.
 The former commit adds some alternative tracepoints events to replace the
 reverted kernel log messages. Signed-off-by: Takashi Sakamoto
 <o-takashi@sakamocchi.jp>
 --- drivers/firewire/core-card.c | 10 drivers/firewire/core-transaction.c
 | 7 ------- drivers/firewire/core.h | 4 ---- 3 files chan [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [64.147.123.150 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1s24T2-0003XO-MW
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

This reverts commit 6732491243045f5a7e1995b4be5f3c964b579ebd.

The former commit adds some alternative tracepoints events to replace the
reverted kernel log messages.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-card.c        | 10 ----------
 drivers/firewire/core-transaction.c |  7 -------
 drivers/firewire/core.h             |  4 ----
 3 files changed, 21 deletions(-)

diff --git a/drivers/firewire/core-card.c b/drivers/firewire/core-card.c
index 5d43acf45a7d..127d87e3a153 100644
--- a/drivers/firewire/core-card.c
+++ b/drivers/firewire/core-card.c
@@ -224,10 +224,6 @@ static int reset_bus(struct fw_card *card, bool short_reset)
 
 	trace_bus_reset_initiate(card->generation, short_reset);
 
-	if (unlikely(fw_core_param_debug & FW_CORE_PARAM_DEBUG_BUSRESETS))
-		fw_notice(card, "initiating %s bus reset\n",
-		          short_reset ? "short" : "long");
-
 	return card->driver->update_phy_reg(card, reg, 0, bit);
 }
 
@@ -235,10 +231,6 @@ void fw_schedule_bus_reset(struct fw_card *card, bool delayed, bool short_reset)
 {
 	trace_bus_reset_schedule(card->generation, short_reset);
 
-	if (unlikely(fw_core_param_debug & FW_CORE_PARAM_DEBUG_BUSRESETS))
-		fw_notice(card, "scheduling %s bus reset\n",
-		          short_reset ? "short" : "long");
-
 	/* We don't try hard to sort out requests of long vs. short resets. */
 	card->br_short = short_reset;
 
@@ -259,8 +251,6 @@ static void br_work(struct work_struct *work)
 	    time_before64(get_jiffies_64(), card->reset_jiffies + 2 * HZ)) {
 		trace_bus_reset_postpone(card->generation, card->br_short);
 
-		if (unlikely(fw_core_param_debug & FW_CORE_PARAM_DEBUG_BUSRESETS))
-			fw_notice(card, "delaying bus reset\n");
 		if (!queue_delayed_work(fw_workqueue, &card->br_work, 2 * HZ))
 			fw_card_put(card);
 		return;
diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
index d3eefbf23663..571fdff65c2b 100644
--- a/drivers/firewire/core-transaction.c
+++ b/drivers/firewire/core-transaction.c
@@ -1390,12 +1390,5 @@ static void __exit fw_core_cleanup(void)
 	idr_destroy(&fw_device_idr);
 }
 
-int fw_core_param_debug;
-module_param_named(debug, fw_core_param_debug, int, 0644);
-MODULE_PARM_DESC(debug, "Verbose logging (default = 0"
-	", bus resets = "	__stringify(FW_CORE_PARAM_DEBUG_BUSRESETS)
-	")");
-
-
 module_init(fw_core_init);
 module_exit(fw_core_cleanup);
diff --git a/drivers/firewire/core.h b/drivers/firewire/core.h
index 5097c7a270b4..7c36d2628e37 100644
--- a/drivers/firewire/core.h
+++ b/drivers/firewire/core.h
@@ -245,10 +245,6 @@ static inline bool tcode_is_link_internal(unsigned int tcode)
 /* OHCI-1394's default upper bound for physical DMA: 4 GB */
 #define FW_MAX_PHYSICAL_RANGE		(1ULL << 32)
 
-#define FW_CORE_PARAM_DEBUG_BUSRESETS	1
-
-extern int fw_core_param_debug;
-
 void fw_core_handle_request(struct fw_card *card, struct fw_packet *request);
 void fw_core_handle_response(struct fw_card *card, struct fw_packet *packet);
 int fw_get_response_length(struct fw_request *request);
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
