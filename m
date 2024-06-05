Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F6218FDAE5
	for <lists+linux1394-devel@lfdr.de>; Thu,  6 Jun 2024 01:52:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sF0Qa-0006du-RX;
	Wed, 05 Jun 2024 23:52:26 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sF0QQ-0006dV-S3
 for linux1394-devel@lists.sourceforge.net;
 Wed, 05 Jun 2024 23:52:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bWof0tvW+gB1Bs1dWeYtyZYYo8ZfFi7RpvNi77t2sIw=; b=gd5HLPFLkjq6XxlbVy4ZgujuH9
 mK7FPDRjPI9t0AdMXjsDyR3Pyo7XcVqZxcJ8+zLMf5Gka71yQb5LFn2B6G7n4EsFLMzbwQFpVBnUA
 8zQY/mY7ckQThkqKBiRtT91l5pB8BKiaJIwpa1vw6qqWvEmVqr00TA7bDwvQfYuyNy/4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bWof0tvW+gB1Bs1dWeYtyZYYo8ZfFi7RpvNi77t2sIw=; b=nJjfAYEXXm5v+EoUc3MYHIBM8Q
 fIXvPDRJLrPWN2sKVbPedCf6mLzactfHFHsUrdczvBnLMx1WcKV9fMASyUPTXdviss1M1k8tMja93
 zgw/MAnGw5naTv+xYnCCHS4jx9XBxg7GqZK+TWgGixefEPUhaDqO1NzxhWq12JX9H2ok=;
Received: from wfhigh5-smtp.messagingengine.com ([64.147.123.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sF0QR-0004Y8-8x for linux1394-devel@lists.sourceforge.net;
 Wed, 05 Jun 2024 23:52:15 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailfhigh.west.internal (Postfix) with ESMTP id EF056180012C;
 Wed,  5 Jun 2024 19:52:08 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 05 Jun 2024 19:52:09 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1717631528; x=
 1717717928; bh=bWof0tvW+gB1Bs1dWeYtyZYYo8ZfFi7RpvNi77t2sIw=; b=Z
 chT7BhKOt27y3TKOHYIUMg0hooTAw2Uyqkf3nlGn3wTe8Bv60tQSC4rr7gIwMYX6
 b3WoYDZPzQTRh9wTbBFNZ3fbPuRWA8WygjlcXGCnIear2oA5PwYsNQuY3Aqbjwg0
 IZsZziYRrzNCzOMbyndGchTuiHGML6UsslxfP7tLuPe7DB/vgeJixmJHNT+J49t2
 YP9Nl95hRFEwigziM/nJqwrYrVnYTBC05FlGyMpZ5cmd+i99KrGBJkGTvnH6g6xN
 W7MS1TqLn87jKQTTmRAL6mpVqdba6GgR7Dh7TMJ4kVq0ciIb0FZjZ78pRj7/te0N
 OvxEkjmBxKuJZds/V5WJQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1717631528; x=
 1717717928; bh=bWof0tvW+gB1Bs1dWeYtyZYYo8ZfFi7RpvNi77t2sIw=; b=O
 sebbhZqZXNcq3iVeTaH+nChpBD1mTI8Sq7uOOv10+bxDC1DJYKlfDwqVoqrx1pjK
 p7z2uBCnUUERHbAbjN5nmidcaCjAgSRGO8N5UWp1oZHD/cr6k6+JpdQ/6pVWrASN
 3g/suDQ49X7Gem5COz0EIRxYRmT8w05wgg5dzEU+dFMqHdmR+VDb4ux6Ktee8/DQ
 CkLTRoHCOLuD9YejUHaf+3tD19MCCD5Xfn9kqt5DLY1SqWfaBDeaUpLnHIa1d7Io
 W28sFtxQNf08SQj9T6ZeUB/G4XBghqEGEWIxhC933DadP2ldrcWacOEqAXkrrv3U
 nslMoR+enev1SuJqGZAQQ==
X-ME-Sender: <xms:KPpgZm11hEVDyisCC7b6bC4GMOjY5usPAK2fpYc1AtzIqngI4A_nFg>
 <xme:KPpgZpEJWKm-7RIJDEnRn4OLvQhCQ2s6Lzuh_H4lAUOHMjXhhb4rS4J6abPBA3YeO
 kMk1fWF7jHx61kk5QQ>
X-ME-Received: <xmr:KPpgZu6wILpLy9Q8W3sJoyYCIWIFaCYkDakaFSZ809D_Mgh_1OcJ8JzOiNWs194zY9vSeNLIXaQ5DFF3u89zoniM-ajxzhnCcVVifrRO5y4iiw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvdeljedgvdeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:KPpgZn2VLGPYpNJNxpLMyZ8_9Lw3wjiJXCxkl9oU_NEhdlNtq2p3qw>
 <xmx:KPpgZpG4ybl3qwl9Y7-Gh3VpMJQlNuxnw6ZZSPpeDnaqJlO6XDnlHA>
 <xmx:KPpgZg94SLsCjYS7M0NKm88b83gm4MVF8aVE-kNBTCql91pxoq5rJA>
 <xmx:KPpgZukpKvwrYUra2NOvYMivCFDHFpqWw6X6yTQ4mZt2yvJssGe5YQ>
 <xmx:KPpgZuTmYrUVyURB23wdndp6P_K634jgWPoFaBTkVhINKRKhBntyqtuG>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 5 Jun 2024 19:52:07 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 04/11] firewire: ohci: minor code refactoring for self ID
 logging
Date: Thu,  6 Jun 2024 08:51:48 +0900
Message-ID: <20240605235155.116468-5-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240605235155.116468-1-o-takashi@sakamocchi.jp>
References: <20240605235155.116468-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Current implementation to log self ID sequence has the rest
 to be refactored; e.g. moving translation-unit level variables to the dependent
 block. This commit is for the purpose. Signed-off-by: Takashi Sakamoto
 <o-takashi@sakamocchi.jp>
 --- drivers/firewire/ohci.c | 36 ++++++++++++++++++++++ 1 file changed, 22
 insertions(+), 14 deletions(-) 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.156 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [64.147.123.156 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [64.147.123.156 listed in sa-accredit.habeas.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sF0QR-0004Y8-8x
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

Current implementation to log self ID sequence has the rest to be
refactored; e.g. moving translation-unit level variables to the
dependent block.

This commit is for the purpose.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c | 36 ++++++++++++++++++++++--------------
 1 file changed, 22 insertions(+), 14 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index f6de0b3a9a55..0ef76cf7b328 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -437,22 +437,21 @@ static void log_irqs(struct fw_ohci *ohci, u32 evt)
 						? " ?"			: "");
 }
 
-static const char *speed[] = {
-	[0] = "S100", [1] = "S200", [2] = "S400",    [3] = "beta",
-};
-static const char *power[] = {
-	[0] = "+0W",  [1] = "+15W", [2] = "+30W",    [3] = "+45W",
-	[4] = "-3W",  [5] = " ?W",  [6] = "-3..-6W", [7] = "-3..-10W",
-};
-static const char port[] = { '.', '-', 'p', 'c', };
-
-static char _p(u32 *s, int shift)
+static unsigned int _p(u32 *s, int shift)
 {
-	return port[*s >> shift & 3];
+	return *s >> shift & 3;
 }
 
 static void log_selfids(struct fw_ohci *ohci, int generation, int self_id_count)
 {
+	static const char *const speed[] = {
+		[0] = "S100", [1] = "S200", [2] = "S400",    [3] = "beta",
+	};
+	static const char *const power[] = {
+		[0] = "+0W",  [1] = "+15W", [2] = "+30W",    [3] = "+45W",
+		[4] = "-3W",  [5] = " ?W",  [6] = "-3..-6W", [7] = "-3..-10W",
+	};
+	static const char port[] = { '.', '-', 'p', 'c', };
 	u32 *s;
 
 	if (likely(!(param_debug & OHCI_PARAM_DEBUG_SELFIDS)))
@@ -465,7 +464,10 @@ static void log_selfids(struct fw_ohci *ohci, int generation, int self_id_count)
 		if ((*s & 1 << 23) == 0)
 			ohci_notice(ohci,
 			    "selfID 0: %08x, phy %d [%c%c%c] %s gc=%d %s %s%s%s\n",
-			    *s, *s >> 24 & 63, _p(s, 6), _p(s, 4), _p(s, 2),
+			    *s, *s >> 24 & 63,
+			    port[_p(s, 6)],
+			    port[_p(s, 4)],
+			    port[_p(s, 2)],
 			    speed[*s >> 14 & 3], *s >> 16 & 63,
 			    power[*s >> 8 & 7], *s >> 22 & 1 ? "L" : "",
 			    *s >> 11 & 1 ? "c" : "", *s & 2 ? "i" : "");
@@ -473,8 +475,14 @@ static void log_selfids(struct fw_ohci *ohci, int generation, int self_id_count)
 			ohci_notice(ohci,
 			    "selfID n: %08x, phy %d [%c%c%c%c%c%c%c%c]\n",
 			    *s, *s >> 24 & 63,
-			    _p(s, 16), _p(s, 14), _p(s, 12), _p(s, 10),
-			    _p(s,  8), _p(s,  6), _p(s,  4), _p(s,  2));
+			    port[_p(s, 16)],
+			    port[_p(s, 14)],
+			    port[_p(s, 12)],
+			    port[_p(s, 10)],
+			    port[_p(s,  8)],
+			    port[_p(s,  6)],
+			    port[_p(s,  4)],
+			    port[_p(s,  2)]);
 }
 
 static const char *evts[] = {
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
