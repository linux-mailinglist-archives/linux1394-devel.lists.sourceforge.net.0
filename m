Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D17A4924B81
	for <lists+linux1394-devel@lfdr.de>; Wed,  3 Jul 2024 00:21:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sOlrr-0007JL-9F;
	Tue, 02 Jul 2024 22:20:54 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sOlrp-0007JB-Rk
 for linux1394-devel@lists.sourceforge.net;
 Tue, 02 Jul 2024 22:20:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=etDpKLQEG9p50XNu4SoX4u7Bb/CdovZOaSYuiOBy3+I=; b=hr0hU/poTFKVgjCS6/425kEoya
 9orEkFT4+kn9s45ycJGWNNqZqT6hXxpwdVVPP0EdLsJM+XEQVs8FFXSE8jxrIr8vT7m4NfmOXl+ye
 sOQaR10wg6z3NFVlVdLq6jMz+FlmViwCnvFJW6pJFnZ1l1rXpJGBCWYfw3u3/TnjADR0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=etDpKLQEG9p50XNu4SoX4u7Bb/CdovZOaSYuiOBy3+I=; b=QmrantoiQThs/WCus/VSc8njX3
 7dAoNA1OZNyM6kzGow1EqVCQBsPbYR6huFk9di5wGJ+aU7q+a56lG2QNS4XVlFnQ1NhuGQwvLrCTz
 K9IdDka/VxIE88aPsas2uyvZR6SwzPN7O26cMNzJZ7NH/yXuhAbSZWPz7uK/uOIj41OI=;
Received: from fout6-smtp.messagingengine.com ([103.168.172.149])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sOlrp-0008RH-9U for linux1394-devel@lists.sourceforge.net;
 Tue, 02 Jul 2024 22:20:53 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailfout.nyi.internal (Postfix) with ESMTP id EF282138029E;
 Tue,  2 Jul 2024 18:20:41 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Tue, 02 Jul 2024 18:20:41 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1719958841; x=
 1720045241; bh=etDpKLQEG9p50XNu4SoX4u7Bb/CdovZOaSYuiOBy3+I=; b=W
 pbYje2dXayXePLYb8bBbUOX1tFV5QSEYRDUuXKTFfCRFhf6msYQldwzN/b73dATJ
 O2DaZ0V0k9iKJytVwpXNESW48Rv1sxeBhxHM3fBJ6PWdQxa1N1Tj0JJkZ7+wzEC0
 1VTX5CHV4TTDTjHZfH/5SpxoU2J+Of8vi2cOipWZRlkGREdYm7LI9Ok6gh0y8+qX
 9Oki0j8F5rEWIw21a57xiJO4q83V7rdUhINwvU12GrTevo2VNcdY99dek7Cbc7dH
 y8jEYeBNZohZZsTbfpjayyJR1DOkQnDqkb6EdjIe9Hw/Kv6W5F1ypeejFp7fV/7f
 YG6becVhIxq6tQMMWOWMg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1719958841; x=
 1720045241; bh=etDpKLQEG9p50XNu4SoX4u7Bb/CdovZOaSYuiOBy3+I=; b=Y
 oCUoconE5n1sy1F2V7k3/L5fV7cPd68p3kBJJN3HGkX4Hheo943yY4hWzzJyifLl
 rLxkwZDEnRHzNRlsEZycXvjCVE9NJvggMy0Bakr9VXTNxZ4XeNObw9Nx758reuY4
 OXGp3Rr0/vEA45DKuRLkJFTk1WQilSNIWfEaqKNDt5IuOHI8XiaiWmmTVCpoNMle
 J1f+kjKUavmTYmZXTkLEiTFQpRzhkeOyDypz3IKKDOFfO8Y6v1yXdfC0lUjH+lLX
 zWGhvNpsT+iaQUV8iLkUg8J8VPxJ8qIek8rIg6F04sntDc8ZzOYqlO4t3SE2t0jZ
 v/sKoOtfMmriheuVQoMaw==
X-ME-Sender: <xms:OX2EZgbZI7qQmwaICFr3kGu-LSfZwO9XMeiVqk1HLPnfNbKcbYJ2Cg>
 <xme:OX2EZrbnvAMZ5Sb-8mW4P48tFitRWfxX3WPlmFI0yHjMF0LYIL-QO6gq4jyjjzWIm
 uNCzatxnEKOjdzoVog>
X-ME-Received: <xmr:OX2EZq-ExLY3oLykeCRywqy3PLMk3mRQraD0ZRyfeSjmGo9V7vHEsus5sno1EV-k6gQtZUnpjKrXTweBK0ZksTQyZ726hJ1JGZyxPUQeN1P1nQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudeigddtlecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgfejue
 dvgfduudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhsthgv
 rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:OX2EZqokGbkkDTQYGjUpDaArh8nw51eFnAjDkSl6XNY3RwDzfkPAPQ>
 <xmx:OX2EZrocodv-2kP735u9sOpC7Hrlzlstd9NL87PHZDJ7JkaGo3dgpw>
 <xmx:OX2EZoTzxouYMvbDuZZmd5vrLnPkPZLnKgHBjOXSdxBsabNXDoWX_A>
 <xmx:OX2EZrrYy6pYrI2TFhZyZ6yY54HGCehB7In9yg6LT8NDWq1QEdE8BA>
 <xmx:OX2EZi1HScrfGDEDfKjzjImIu2j5NEGrQ8e2XBGC894lyfW1vpLpypV->
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 2 Jul 2024 18:20:40 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 2/5] firewire: ohci: use static function to handle endian
 issue on PowerPC platform
Date: Wed,  3 Jul 2024 07:20:31 +0900
Message-ID: <20240702222034.1378764-3-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240702222034.1378764-1-o-takashi@sakamocchi.jp>
References: <20240702222034.1378764-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: It is preferable to use static function instead of functional
 macro in some points. It checks type of argument, but would be optimized
 to embedded code instead of function calls. This commit obsoletes the
 functional
 macro with the static function. Additionally this commit refactors quirk
 detection to ease the later work. 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.149 listed in bl.score.senderscore.com]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [103.168.172.149 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.149 listed in sa-accredit.habeas.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1sOlrp-0008RH-9U
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

It is preferable to use static function instead of functional macro in
some points. It checks type of argument, but would be optimized to
embedded code instead of function calls.

This commit obsoletes the functional macro with the static function.
Additionally this commit refactors quirk detection to ease the later work.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c | 39 +++++++++++++++++++++++++++------------
 1 file changed, 27 insertions(+), 12 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index a2d6d1d1ec2b..5b90ca72fa64 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -875,10 +875,25 @@ static void ar_sync_buffers_for_cpu(struct ar_context *ctx,
 }
 
 #if defined(CONFIG_PPC_PMAC) && defined(CONFIG_PPC32)
-#define cond_le32_to_cpu(v) \
-	(ohci->quirks & QUIRK_BE_HEADERS ? be32_to_cpu(v) : le32_to_cpu(v))
+static u32 cond_le32_to_cpu(__le32 value, bool has_be_header_quirk)
+{
+	return has_be_header_quirk ? be32_to_cpu(value) : le32_to_cpu(value);
+}
+
+static bool has_be_header_quirk(const struct fw_ohci *ohci)
+{
+	return !!(ohci->quirks & QUIRK_BE_HEADERS);
+}
 #else
-#define cond_le32_to_cpu(v) le32_to_cpu(v)
+static u32 cond_le32_to_cpu(__le32 value, bool has_be_header_quirk __maybe_unused)
+{
+	return le32_to_cpu(value);
+}
+
+static bool has_be_header_quirk(const struct fw_ohci *ohci)
+{
+	return false;
+}
 #endif
 
 static __le32 *handle_ar_packet(struct ar_context *ctx, __le32 *buffer)
@@ -888,9 +903,9 @@ static __le32 *handle_ar_packet(struct ar_context *ctx, __le32 *buffer)
 	u32 status, length, tcode;
 	int evt;
 
-	p.header[0] = cond_le32_to_cpu(buffer[0]);
-	p.header[1] = cond_le32_to_cpu(buffer[1]);
-	p.header[2] = cond_le32_to_cpu(buffer[2]);
+	p.header[0] = cond_le32_to_cpu(buffer[0], has_be_header_quirk(ohci));
+	p.header[1] = cond_le32_to_cpu(buffer[1], has_be_header_quirk(ohci));
+	p.header[2] = cond_le32_to_cpu(buffer[2], has_be_header_quirk(ohci));
 
 	tcode = async_header_get_tcode(p.header);
 	switch (tcode) {
@@ -902,7 +917,7 @@ static __le32 *handle_ar_packet(struct ar_context *ctx, __le32 *buffer)
 		break;
 
 	case TCODE_READ_BLOCK_REQUEST :
-		p.header[3] = cond_le32_to_cpu(buffer[3]);
+		p.header[3] = cond_le32_to_cpu(buffer[3], has_be_header_quirk(ohci));
 		p.header_length = 16;
 		p.payload_length = 0;
 		break;
@@ -911,7 +926,7 @@ static __le32 *handle_ar_packet(struct ar_context *ctx, __le32 *buffer)
 	case TCODE_READ_BLOCK_RESPONSE:
 	case TCODE_LOCK_REQUEST:
 	case TCODE_LOCK_RESPONSE:
-		p.header[3] = cond_le32_to_cpu(buffer[3]);
+		p.header[3] = cond_le32_to_cpu(buffer[3], has_be_header_quirk(ohci));
 		p.header_length = 16;
 		p.payload_length = async_header_get_data_length(p.header);
 		if (p.payload_length > MAX_ASYNC_PAYLOAD) {
@@ -936,7 +951,7 @@ static __le32 *handle_ar_packet(struct ar_context *ctx, __le32 *buffer)
 
 	/* FIXME: What to do about evt_* errors? */
 	length = (p.header_length + p.payload_length + 3) / 4;
-	status = cond_le32_to_cpu(buffer[length]);
+	status = cond_le32_to_cpu(buffer[length], has_be_header_quirk(ohci));
 	evt    = (status >> 16) & 0x1f;
 
 	p.ack        = evt - 16;
@@ -2030,12 +2045,12 @@ static void bus_reset_work(struct work_struct *work)
 		return;
 	}
 
-	generation = (cond_le32_to_cpu(ohci->self_id[0]) >> 16) & 0xff;
+	generation = (cond_le32_to_cpu(ohci->self_id[0], has_be_header_quirk(ohci)) >> 16) & 0xff;
 	rmb();
 
 	for (i = 1, j = 0; j < self_id_count; i += 2, j++) {
-		u32 id  = cond_le32_to_cpu(ohci->self_id[i]);
-		u32 id2 = cond_le32_to_cpu(ohci->self_id[i + 1]);
+		u32 id  = cond_le32_to_cpu(ohci->self_id[i], has_be_header_quirk(ohci));
+		u32 id2 = cond_le32_to_cpu(ohci->self_id[i + 1], has_be_header_quirk(ohci));
 
 		if (id != ~id2) {
 			/*
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
