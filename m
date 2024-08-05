Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 722C59477A8
	for <lists+linux1394-devel@lfdr.de>; Mon,  5 Aug 2024 10:54:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1satUK-0005KS-VY;
	Mon, 05 Aug 2024 08:54:44 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1satUJ-0005K1-Fu
 for linux1394-devel@lists.sourceforge.net;
 Mon, 05 Aug 2024 08:54:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bU5KUiELPtrWttit1O/f/6nD4P98n+MP8Do0wq0HKos=; b=fs0m6+yHR51atSPOs6vBVXCkD+
 U3GoOnL3nND+Dl/8sYAjwkaR2D3M6jdsDb7kwnivfvvruyc3wZCUk6u+AgsJACYwCbyn35rXSk0WZ
 Sc5gWCPuU8sXpO8b485IwaStm//qe+P9wrt12PcV18mFtsBDTCTxVqtF85Z17KUrO9HI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bU5KUiELPtrWttit1O/f/6nD4P98n+MP8Do0wq0HKos=; b=XsrMUsLseWjLz/cbF0YQ07FLNz
 kFJX71URvZmShtc8NJ8naCotFnYYLapQFZ03BAvtqmx2DHpoFqhM44BNk64GXhnN2ggIZwrXSNmsP
 XPGdirgWzuvSj0maJi3qTvw97b0TGmbWPfVdx/1MrhqB0nB3oqj9xpTlWeTrUu63xVAg=;
Received: from fhigh4-smtp.messagingengine.com ([103.168.172.155])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1satUI-0002u9-My for linux1394-devel@lists.sourceforge.net;
 Mon, 05 Aug 2024 08:54:43 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 2050E1151C9F;
 Mon,  5 Aug 2024 04:54:32 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Mon, 05 Aug 2024 04:54:32 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1722848072; x=
 1722934472; bh=bU5KUiELPtrWttit1O/f/6nD4P98n+MP8Do0wq0HKos=; b=U
 UWVPq4RhDGuoy+6iLlfbjECLslTp4D+cpXH4gh+uzXBd3sd49MXiYresZR2rAt7U
 Ua3M8mTVJTcEI57T4VRNkKBBK4EY4ECo+1A9AjZwsTDbZT+9hUjD/XkWq4Howa+7
 JAs9HVr4G8Ai2YYtkuLaYuWI5HMsCea/WAoTucRZm5WSGxgNtb4WnK+oyYI0qveK
 8I1f9aXqX1m2j/fZ6ClDLqYcdlMT84FwpNaunzOfO05kmkHkpB5OKd8lNSj1REQl
 kSG+Y6MiuaLPYQF7yQmHydzAwBGyDFx7MLO7An8Ey3z1tKY3bcP1u0ve3hQfc2Mj
 EiZlZ1x4EPCHBtFUh59KQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1722848072; x=
 1722934472; bh=bU5KUiELPtrWttit1O/f/6nD4P98n+MP8Do0wq0HKos=; b=T
 6KwmugROEJoY7e7AddtH/VGvfrbtzCCMq338ggrDLwfQhQarRNzF1L28vTBeqmBS
 Z6juhpiLZt34+ZAovOPVi1L4rHyfNP76kpDUlrqEcoksILCt6dB9sq0vpyWtaqwt
 QlAaH9mktITsDjkuwaseVz6XvMCBkszJYEUh42vL/rdhIQKDUmjTdXouoeW6hvSA
 MZvyr5nv4/OE7rZ6/o5K9Qw+Q6BXr9JmG8r8VAqP6pSrKNJROmZg0B2nZ+MDEt9l
 /ekEDb2N+j/o+lOqA8jKTpPUq0PGprta0sYOPWJGZwJs8ITEpiPYYHPpMiW2zfly
 w78D8PL58q8HaAMDAWq2Q==
X-ME-Sender: <xms:SJOwZhhTPWqmgw2qomngcYpYnjzlnFeYKV-5tzuEvhszLirS8gv_TA>
 <xme:SJOwZmAN2gb0Pj34OvK7ZV6ORK1Fb0Tc1OGJ-RLtwysctK98EmzaJkq3Ml4uKYkwc
 wtRZmWYTEr4t_bp328>
X-ME-Received: <xmr:SJOwZhFKvF7z9UR-aIzFT5T5keqMkGEmY9h_m1J5fp3xEjm8PLveSmtVvRTocY8IP1iq740G8ryxab0yZRVU9GVNrA5naiMQNrz8TkKCu90>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrkeeigddutdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgfejue
 dvgfduudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhsthgv
 rhfuihiivgepgeenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjphdpnhgspghrtghpthhtoheptd
X-ME-Proxy: <xmx:SJOwZmQ7RssWEX5a1s0Ra5g2ua_u3pPv0h89QhfAXl0PFm7842nwVw>
 <xmx:SJOwZuzltloc_SMtO-WUn9fsqQoaO4ftUbTcxyVwyKnzdvsvtmfIdQ>
 <xmx:SJOwZs6J6BD8qGduYwE0qNnke3IXq19gngeI4fL7hozPmdXi298oXQ>
 <xmx:SJOwZjxSVz8mj1qYoXU1H0Nkhg_bUnD6VoUa_UfxnAxTUK8gTmG1RA>
 <xmx:SJOwZp9ESNZwdNOydLdVL8QCymaRaEYUddpn4poT1YARl61Oj7j14Iv1>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 5 Aug 2024 04:54:31 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH v2 15/17] firewire: ohci: use guard macro to maintain bus time
Date: Mon,  5 Aug 2024 17:54:06 +0900
Message-ID: <20240805085408.251763-16-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240805085408.251763-1-o-takashi@sakamocchi.jp>
References: <20240805085408.251763-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The 1394 OHCI driver maintains bus time to respond to
 querying
 request. The concurrent access to the bus time is protected by spinlock.
 This commit uses guard macro to maintain the spinlock. Signed-off-by: Takashi
 Sakamoto <o-takashi@sakamocchi.jp> --- drivers/firewire/ohci.c | 30
 ++++++++++++ 1 file changed, 12 insertions(+), 18 deletions(-) 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [103.168.172.155 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.155 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.155 listed in sa-accredit.habeas.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1satUI-0002u9-My
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

The 1394 OHCI driver maintains bus time to respond to querying request.
The concurrent access to the bus time is protected by spinlock.

This commit uses guard macro to maintain the spinlock.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c | 30 ++++++++++++------------------
 1 file changed, 12 insertions(+), 18 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 1461e008d265..5cb7c7603c2c 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -2300,9 +2300,8 @@ static irqreturn_t irq_handler(int irq, void *data)
 		handle_dead_contexts(ohci);
 
 	if (event & OHCI1394_cycle64Seconds) {
-		spin_lock(&ohci->lock);
+		guard(spinlock)(&ohci->lock);
 		update_bus_time(ohci);
-		spin_unlock(&ohci->lock);
 	} else
 		flush_writes(ohci);
 
@@ -2762,7 +2761,6 @@ static int ohci_enable_phys_dma(struct fw_card *card,
 static u32 ohci_read_csr(struct fw_card *card, int csr_offset)
 {
 	struct fw_ohci *ohci = fw_ohci(card);
-	unsigned long flags;
 	u32 value;
 
 	switch (csr_offset) {
@@ -2786,16 +2784,14 @@ static u32 ohci_read_csr(struct fw_card *card, int csr_offset)
 		return get_cycle_time(ohci);
 
 	case CSR_BUS_TIME:
-		/*
-		 * We might be called just after the cycle timer has wrapped
-		 * around but just before the cycle64Seconds handler, so we
-		 * better check here, too, if the bus time needs to be updated.
-		 */
-		spin_lock_irqsave(&ohci->lock, flags);
-		value = update_bus_time(ohci);
-		spin_unlock_irqrestore(&ohci->lock, flags);
-		return value;
+	{
+		// We might be called just after the cycle timer has wrapped around but just before
+		// the cycle64Seconds handler, so we better check here, too, if the bus time needs
+		// to be updated.
 
+		guard(spinlock_irqsave)(&ohci->lock);
+		return update_bus_time(ohci);
+	}
 	case CSR_BUSY_TIMEOUT:
 		value = reg_read(ohci, OHCI1394_ATRetries);
 		return (value >> 4) & 0x0ffff00f;
@@ -2813,7 +2809,6 @@ static u32 ohci_read_csr(struct fw_card *card, int csr_offset)
 static void ohci_write_csr(struct fw_card *card, int csr_offset, u32 value)
 {
 	struct fw_ohci *ohci = fw_ohci(card);
-	unsigned long flags;
 
 	switch (csr_offset) {
 	case CSR_STATE_CLEAR:
@@ -2849,12 +2844,11 @@ static void ohci_write_csr(struct fw_card *card, int csr_offset, u32 value)
 		break;
 
 	case CSR_BUS_TIME:
-		spin_lock_irqsave(&ohci->lock, flags);
-		ohci->bus_time = (update_bus_time(ohci) & 0x40) |
-		                 (value & ~0x7f);
-		spin_unlock_irqrestore(&ohci->lock, flags);
+	{
+		guard(spinlock_irqsave)(&ohci->lock);
+		ohci->bus_time = (update_bus_time(ohci) & 0x40) | (value & ~0x7f);
 		break;
-
+	}
 	case CSR_BUSY_TIMEOUT:
 		value = (value & 0xf) | ((value & 0xf) << 4) |
 			((value & 0xf) << 8) | ((value & 0x0ffff000) << 4);
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
