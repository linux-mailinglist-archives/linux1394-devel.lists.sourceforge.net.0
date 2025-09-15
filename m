Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E530EB5888C
	for <lists+linux1394-devel@lfdr.de>; Tue, 16 Sep 2025 01:48:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jONgq4N6a2YIbEB5CUtBAp+9yFk++7Enbhs5/GrDvRI=; b=R8KBI7Xd2muIO3KYdGZOTXMfwA
	40yqRgS1W1a927aECGCAKqZoEIP3+CDUSHBLVevMusUWJgXv2ZJXXy6zJUzmymJvdJKGWfy21zqv2
	9LaiU/tihwERM2FeBMhzBmX1L/U1qL9rgqqIlBQ8yo0aqihmyppLc05Fywt3DmOo7K9c=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uyIvb-0002iZ-MM;
	Mon, 15 Sep 2025 23:48:12 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uyIvZ-0002i2-MN
 for linux1394-devel@lists.sourceforge.net;
 Mon, 15 Sep 2025 23:48:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0q1rmHtcD/GAxDwFEVUDokzNyCrgp7cj3dsW3YNiFTU=; b=de3nDhxvgtaoXkrhn7Wfw5ejE7
 Yhcwmp8Wn2gxI909Q6iyN7ZMiUBzYpVUVj648EWyJDhNmhhmW4tPkPEo1bQpHq4YwijyjiejAimWh
 6SHeMEnQCfDOSSLBkE9yi5yykrfnufGHlh99Djb8/VyxgIsovIrFzIm08vQtJD1Be350=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0q1rmHtcD/GAxDwFEVUDokzNyCrgp7cj3dsW3YNiFTU=; b=QEfAUMx6G3Vc1g9Fstx+CXxccm
 Jmt4HBSQhuPSCBhhkJzQRgOCKMn1yIYCE2aGlo+2dvxcWRXFHT/zvc3qDm40I1QOZRq90ufl1TdCU
 sq6hG3H9UyIp1xW/zQik8M9l4E5nuCIzqsUzr2wqm+6EPjEteAT+0GI9J/01YgbPVyNY=;
Received: from fhigh-b6-smtp.messagingengine.com ([202.12.124.157])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uyIvZ-0002KT-NQ for linux1394-devel@lists.sourceforge.net;
 Mon, 15 Sep 2025 23:48:10 +0000
Received: from phl-compute-03.internal (phl-compute-03.internal [10.202.2.43])
 by mailfhigh.stl.internal (Postfix) with ESMTP id 375CF7A019F;
 Mon, 15 Sep 2025 19:47:59 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-03.internal (MEProxy); Mon, 15 Sep 2025 19:47:59 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1757980079; x=
 1758066479; bh=0q1rmHtcD/GAxDwFEVUDokzNyCrgp7cj3dsW3YNiFTU=; b=q
 1gm3f1G41PBtL5ilaq4WMZOeBVMJSDi1ySWPVKY+9YR7QXUJTLajInCR69qtf79i
 e/Rjwudw/5qbRalJQLh9coddHchvHWnSiIaZXjPj06uTsKNUxOc+6pXfgD+GsODA
 pZYxdoOdLyijP4B9w0cDf0jpan0bvxEiCFx1HzZ33VXJBTqwt5kEY1djYZ/F8maJ
 JXhVt6TQT/JIlSpoXm/7eyOwCxhRXkpmRhBPiP1eO5/jplHr43sit9wJaIjkV3oa
 iT8t78PtruK7Jq0iJrK1lb7Lo5odMPGwFe5ILc32ows5cOgJWXhFNejNPUnmTXN9
 pOvZgbjj4AXRW9hH5twZw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1757980079; x=1758066479; bh=0
 q1rmHtcD/GAxDwFEVUDokzNyCrgp7cj3dsW3YNiFTU=; b=IC5tJNGAqs5eHf7dS
 eAvz2ajvwaIvKp0ALGLl6+YWTQFla0X0iMkdqHTzYZQ5YqFk6IEo1M4P97C7DOWL
 CsPnCjPv6JitPCA7eUbQCaqQ1dvWzgLRRMQJDmAvO56ngx0P+NKT8uu2nCmhlzbY
 bsLDznZu/EWUdZNaRjlkMHj38l5FZf9VPC0nJ9scikhK+ppZ9Yc9LD/9Ry5P7H0a
 EzIIrju/U8ZdY1pWQm+Xl+CQBuTvoY/9M9WzAUDSwoQXdlq67OlZ7RDlwdyxaHbd
 Ng2h9w+BAtnv8SjAiRzY8v6h2NoWMwQDlU3aUksq/6ftszCWpDPn2K+mOEpybULI
 9T8/w==
X-ME-Sender: <xms:rqXIaHIfNzkfF5tkFlxmEiwibM4UKvCt8fvLpTnnbv9k1TPSunmukA>
 <xme:rqXIaEFNl6UJjmeZ_wptF_f6nX1_zMqiqcw5Uc0nhjDead6lK6CIhfBhoa_u-fvKR
 Rn4gU8_-dammxX6G6o>
X-ME-Received: <xmr:rqXIaBo2WKSP8eyOEZDgL1B0iDbF5ychHQto2S1taZl20E0rJpR-B4HADS0KCcTPcKjSMcq9aDKMeFMZRzW_xykLY9956VVGPK6EZvfyjemmRw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdefledthecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekredtre
 dttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgfejuedvgf
 duudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhsthgvrhfu
 ihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkh
 grmhhotggthhhirdhjphdpnhgspghrtghpthhtohepvddpmhhouggvpehsmhhtphhouhht
 pdhrtghpthhtoheplhhinhhugidufeelgedquggvvhgvlheslhhishhtshdrshhouhhrtg
 gvfhhorhhgvgdrnhgvthdprhgtphhtthhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghr
 rdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:rqXIaNQXt4FcSJ2rM97RXALwe3te_Ud4py4BDKZFLU30XIl_aODnTg>
 <xmx:rqXIaOOUnzvPuVhUG5s8aljdsvwhVh7R_AEkwXhlMD539QumwYMwwA>
 <xmx:rqXIaANfeBI4lJdhwwswr-v0CIRT79VzLk_W3U_igPGMzgoc-NwD_Q>
 <xmx:rqXIaOupKxzJxEw0B5G9W7tq2mAKf0MRtobWxrgc7KQw_Wq_Oob9GQ>
 <xmx:r6XIaLP3GcH_GycYa3zkCs74ly0PTc2bdI9CRmDLeTX7Vokbehp7MP2w>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 15 Sep 2025 19:47:57 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 5/6] firewire: core: use spin lock specific to timer for split
 transaction
Date: Tue, 16 Sep 2025 08:47:46 +0900
Message-ID: <20250915234747.915922-6-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250915234747.915922-1-o-takashi@sakamocchi.jp>
References: <20250915234747.915922-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: At present the parameters to compute timeout time for split
 transaction is protected by card-wide spin lock, while it is not necessarily
 convenient in a point to narrower critical section. This commit adds and
 uses another spin lock specific for the purpose. 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1uyIvZ-0002KT-NQ
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

At present the parameters to compute timeout time for split transaction is
protected by card-wide spin lock, while it is not necessarily convenient
in a point to narrower critical section.

This commit adds and uses another spin lock specific for the purpose.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-card.c        | 10 +++--
 drivers/firewire/core-transaction.c | 63 +++++++++++++++++++----------
 include/linux/firewire.h            | 15 ++++---
 3 files changed, 57 insertions(+), 31 deletions(-)

diff --git a/drivers/firewire/core-card.c b/drivers/firewire/core-card.c
index 39f95007305f..96495392a1f6 100644
--- a/drivers/firewire/core-card.c
+++ b/drivers/firewire/core-card.c
@@ -550,10 +550,12 @@ void fw_card_initialize(struct fw_card *card,
 	INIT_LIST_HEAD(&card->transactions.list);
 	spin_lock_init(&card->transactions.lock);
 
-	card->split_timeout_hi = DEFAULT_SPLIT_TIMEOUT / 8000;
-	card->split_timeout_lo = (DEFAULT_SPLIT_TIMEOUT % 8000) << 19;
-	card->split_timeout_cycles = DEFAULT_SPLIT_TIMEOUT;
-	card->split_timeout_jiffies = isoc_cycles_to_jiffies(DEFAULT_SPLIT_TIMEOUT);
+	card->split_timeout.hi = DEFAULT_SPLIT_TIMEOUT / 8000;
+	card->split_timeout.lo = (DEFAULT_SPLIT_TIMEOUT % 8000) << 19;
+	card->split_timeout.cycles = DEFAULT_SPLIT_TIMEOUT;
+	card->split_timeout.jiffies = isoc_cycles_to_jiffies(DEFAULT_SPLIT_TIMEOUT);
+	spin_lock_init(&card->split_timeout.lock);
+
 	card->color = 0;
 	card->broadcast_channel = BROADCAST_CHANNEL_INITIAL;
 
diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
index 5366d8a781ac..dd3656a0c1ff 100644
--- a/drivers/firewire/core-transaction.c
+++ b/drivers/firewire/core-transaction.c
@@ -137,14 +137,18 @@ static void split_transaction_timeout_callback(struct timer_list *timer)
 static void start_split_transaction_timeout(struct fw_transaction *t,
 					    struct fw_card *card)
 {
-	guard(spinlock_irqsave)(&card->lock);
+	unsigned long delta;
 
 	if (list_empty(&t->link) || WARN_ON(t->is_split_transaction))
 		return;
 
 	t->is_split_transaction = true;
-	mod_timer(&t->split_timeout_timer,
-		  jiffies + card->split_timeout_jiffies);
+
+	// NOTE: This can be without irqsave when we can guarantee that __fw_send_request() for
+	// local destination never runs in any type of IRQ context.
+	scoped_guard(spinlock_irqsave, &card->split_timeout.lock)
+		delta = card->split_timeout.jiffies;
+	mod_timer(&t->split_timeout_timer, jiffies + delta);
 }
 
 static u32 compute_split_timeout_timestamp(struct fw_card *card, u32 request_timestamp);
@@ -164,8 +168,12 @@ static void transmit_complete_callback(struct fw_packet *packet,
 		break;
 	case ACK_PENDING:
 	{
-		t->split_timeout_cycle =
-			compute_split_timeout_timestamp(card, packet->timestamp) & 0xffff;
+		// NOTE: This can be without irqsave when we can guarantee that __fw_send_request() for
+		// local destination never runs in any type of IRQ context.
+		scoped_guard(spinlock_irqsave, &card->split_timeout.lock) {
+			t->split_timeout_cycle =
+				compute_split_timeout_timestamp(card, packet->timestamp) & 0xffff;
+		}
 		start_split_transaction_timeout(t, card);
 		break;
 	}
@@ -790,11 +798,14 @@ EXPORT_SYMBOL(fw_fill_response);
 
 static u32 compute_split_timeout_timestamp(struct fw_card *card,
 					   u32 request_timestamp)
+__must_hold(&card->split_timeout.lock)
 {
 	unsigned int cycles;
 	u32 timestamp;
 
-	cycles = card->split_timeout_cycles;
+	lockdep_assert_held(&card->split_timeout.lock);
+
+	cycles = card->split_timeout.cycles;
 	cycles += request_timestamp & 0x1fff;
 
 	timestamp = request_timestamp & ~0x1fff;
@@ -845,9 +856,12 @@ static struct fw_request *allocate_request(struct fw_card *card,
 		return NULL;
 	kref_init(&request->kref);
 
+	// NOTE: This can be without irqsave when we can guarantee that __fw_send_request() for
+	// local destination never runs in any type of IRQ context.
+	scoped_guard(spinlock_irqsave, &card->split_timeout.lock)
+		request->response.timestamp = compute_split_timeout_timestamp(card, p->timestamp);
+
 	request->response.speed = p->speed;
-	request->response.timestamp =
-			compute_split_timeout_timestamp(card, p->timestamp);
 	request->response.generation = p->generation;
 	request->response.ack = 0;
 	request->response.callback = free_response_callback;
@@ -1228,16 +1242,17 @@ static const struct fw_address_region registers_region =
 	  .end   = CSR_REGISTER_BASE | CSR_CONFIG_ROM, };
 
 static void update_split_timeout(struct fw_card *card)
+__must_hold(&card->split_timeout.lock)
 {
 	unsigned int cycles;
 
-	cycles = card->split_timeout_hi * 8000 + (card->split_timeout_lo >> 19);
+	cycles = card->split_timeout.hi * 8000 + (card->split_timeout.lo >> 19);
 
 	/* minimum per IEEE 1394, maximum which doesn't overflow OHCI */
 	cycles = clamp(cycles, 800u, 3u * 8000u);
 
-	card->split_timeout_cycles = cycles;
-	card->split_timeout_jiffies = isoc_cycles_to_jiffies(cycles);
+	card->split_timeout.cycles = cycles;
+	card->split_timeout.jiffies = isoc_cycles_to_jiffies(cycles);
 }
 
 static void handle_registers(struct fw_card *card, struct fw_request *request,
@@ -1287,12 +1302,15 @@ static void handle_registers(struct fw_card *card, struct fw_request *request,
 
 	case CSR_SPLIT_TIMEOUT_HI:
 		if (tcode == TCODE_READ_QUADLET_REQUEST) {
-			*data = cpu_to_be32(card->split_timeout_hi);
+			*data = cpu_to_be32(card->split_timeout.hi);
 		} else if (tcode == TCODE_WRITE_QUADLET_REQUEST) {
-			guard(spinlock_irqsave)(&card->lock);
-
-			card->split_timeout_hi = be32_to_cpu(*data) & 7;
-			update_split_timeout(card);
+			// NOTE: This can be without irqsave when we can guarantee that
+			// __fw_send_request() for local destination never runs in any type of IRQ
+			// context.
+			scoped_guard(spinlock_irqsave, &card->split_timeout.lock) {
+				card->split_timeout.hi = be32_to_cpu(*data) & 7;
+				update_split_timeout(card);
+			}
 		} else {
 			rcode = RCODE_TYPE_ERROR;
 		}
@@ -1300,12 +1318,15 @@ static void handle_registers(struct fw_card *card, struct fw_request *request,
 
 	case CSR_SPLIT_TIMEOUT_LO:
 		if (tcode == TCODE_READ_QUADLET_REQUEST) {
-			*data = cpu_to_be32(card->split_timeout_lo);
+			*data = cpu_to_be32(card->split_timeout.lo);
 		} else if (tcode == TCODE_WRITE_QUADLET_REQUEST) {
-			guard(spinlock_irqsave)(&card->lock);
-
-			card->split_timeout_lo = be32_to_cpu(*data) & 0xfff80000;
-			update_split_timeout(card);
+			// NOTE: This can be without irqsave when we can guarantee that
+			// __fw_send_request() for local destination never runs in any type of IRQ
+			// context.
+			scoped_guard(spinlock_irqsave, &card->split_timeout.lock) {
+				card->split_timeout.lo = be32_to_cpu(*data) & 0xfff80000;
+				update_split_timeout(card);
+			}
 		} else {
 			rcode = RCODE_TYPE_ERROR;
 		}
diff --git a/include/linux/firewire.h b/include/linux/firewire.h
index 8d6801cf2fca..6d208769d456 100644
--- a/include/linux/firewire.h
+++ b/include/linux/firewire.h
@@ -97,18 +97,21 @@ struct fw_card {
 		spinlock_t lock;
 	} transactions;
 
-	u32 split_timeout_hi;
-	u32 split_timeout_lo;
-	unsigned int split_timeout_cycles;
-	unsigned int split_timeout_jiffies;
+	struct {
+		u32 hi;
+		u32 lo;
+		unsigned int cycles;
+		unsigned int jiffies;
+		spinlock_t lock;
+	} split_timeout;
 
 	unsigned long long guid;
 	unsigned max_receive;
 	int link_speed;
 	int config_rom_generation;
 
-	spinlock_t lock; /* Take this lock when handling the lists in
-			  * this struct. */
+	spinlock_t lock;
+
 	struct fw_node *local_node;
 	struct fw_node *root_node;
 	struct fw_node *irm_node;
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
