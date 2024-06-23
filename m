Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 326D0913ED3
	for <lists+linux1394-devel@lfdr.de>; Mon, 24 Jun 2024 00:09:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sLVOj-0002VD-08;
	Sun, 23 Jun 2024 22:09:21 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sLVOh-0002V4-F4
 for linux1394-devel@lists.sourceforge.net;
 Sun, 23 Jun 2024 22:09:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WCYv0QpMzYje5FW2V+N1G/dKlMR0j9LxZBRZVImqLBc=; b=bikY6Aq7KPElnzmAD/2tmz2TcS
 /YxMymoMjQpMF6dvsu2vcSRy0JabYvUEJMAhc2FJXoJUYZpvWw0nkuw/E0+D3fz/mWqUL/7nKaff8
 UwMrNEmxTNVJnreHsexaDMhgVBmPXIeVXn/gFgBjEr92YrA6vMEhJS0kYMvN3WWLatZE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WCYv0QpMzYje5FW2V+N1G/dKlMR0j9LxZBRZVImqLBc=; b=PFma9uDnrDJ9kLEAZ2HHPBiBBb
 7xN6z34Tk4xN5S5Jr8sVy7dW7/0fmunNiZevJPAdtp/iD2B21a75IJT0nn6WwpzDXDN0v79qqV++/
 3dbdavH4zetYgfOkr4m52QbNywaAzOU+gKshrOhhLc62qXJkQdsOBorhOtScMavC52Bo=;
Received: from fout1-smtp.messagingengine.com ([103.168.172.144])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sLVOh-0002KK-Q9 for linux1394-devel@lists.sourceforge.net;
 Sun, 23 Jun 2024 22:09:19 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailfout.nyi.internal (Postfix) with ESMTP id 77EF8138022D;
 Sun, 23 Jun 2024 18:09:08 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Sun, 23 Jun 2024 18:09:08 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1719180548; x=
 1719266948; bh=WCYv0QpMzYje5FW2V+N1G/dKlMR0j9LxZBRZVImqLBc=; b=P
 OKsJ8HzyQF7U8fIh+Npa1z131vIyr9so5aJRtWSmp+4dCJFD0pVbo76G6I6KP1qb
 Zzgyzim6XI9Z68oFEF2LzNO4JGWVoFLEopJYJcJnQXk9jUysjuaJ2SkhC+khoug3
 OKWvuB0MMTSFgpJSvRdOaYCXwx7iQGRKQyV8r6yHHXJxBbHGBEb5modsQ9ehYqQb
 6Qw2xI9unUgWwjftK4noyqTGKXsJMaIIfS6jBKZ5Rx3D8bPKy7ChUwII7V3JSgBR
 Tgm9PiZqBc1mv8jh+5dG5UI58qqPXWUEWHEilWToxCiDc3nw5B7nxwmWiLgXEOGh
 iE/0TAZXfw6LG7RRhsy/A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1719180548; x=
 1719266948; bh=WCYv0QpMzYje5FW2V+N1G/dKlMR0j9LxZBRZVImqLBc=; b=A
 vIQiElLcy5LFYPIePEummmHGY8n+b894HsXt4RL62lcH9kVV55sS/DMd60ibaRg9
 m93if47vKqeD9BSnAk923JhIekeLHWUk8mFsZhLhNPNEdUCWkpfOpOE0y/1DyX1b
 cNVOsFeHFl/O8NNJxKPdEur980Y7k6tq5JUA9282bQzDjl/4y7xC2CCPjY8f2XvI
 k58ySyW8AauSpAX+6SNkbpbXcUZbpq/Kc5m2zxP6+HIcLU+Ra99+JP98c8rdBDKh
 ZJ1xm3nU5Tr/jm/cp4R/pC+IE0Yrlg/8aVi6YF3caF08iLR5B+/DCD1P/HUexCNR
 XmeIL2imyNZrKUJvbC+6Q==
X-ME-Sender: <xms:A514Zo3b1BEGfAbCQdvHZxDw2p56N3Cu3uarbbQCeJ_OsR77KxKpLw>
 <xme:A514ZjFF1MidnzAXEnDcGcFxAJuHoRSqylV8eM9IujJ-u7BTqkSIMyggSsgAYecu8
 wdsaayGOv6jVqRbBkw>
X-ME-Received: <xmr:A514Zg7UF3drzRWwgC6p9yGi_LdjydL6aIIVIyMLscJWmiV967AGp0DgLlDziDzLkBVfOezH3AQiVZTE9UzzlweJZYR8UwdLqCqdNIkbE04_>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrfeegtddgtdeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:A514Zh1KdQPB6l_QZWqtOmEB4n3HztADhC0CLQ_wbkMO7IuVM1v6fw>
 <xmx:A514ZrFgho64Jx2SOkCtw1LFqZjDPEBKnTNfCxQG1ykYYjxgDn_BLg>
 <xmx:A514Zq_NKIx4rzirKdq-ZZv4-VNelVttSBBJIB_jzpzLxIqyVeFIzQ>
 <xmx:A514ZglfHCharB5y0fdLJvI4KJu7UXV76EWwcyS8q01N6b7fUOL15w>
 <xmx:BJ14ZgRzwHqfnFft1TMgnOOOtyreOvAJ5jkJwOBs8Xq6kxiW2TqLZOdS>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 23 Jun 2024 18:09:06 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 2/7] firewire: core: add tracepoints events for setting
 channels of multichannel context
Date: Mon, 24 Jun 2024 07:08:53 +0900
Message-ID: <20240623220859.851685-3-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240623220859.851685-1-o-takashi@sakamocchi.jp>
References: <20240623220859.851685-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: It is helpful to trace the channel setting for the
 multichannel
 isochronous context when the core function is requested it by both in-kernel
 unit drivers and userspace applications. This commit adds some tracepoints
 events for the aim. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.144 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.144 listed in bl.score.senderscore.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1sLVOh-0002KK-Q9
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

It is helpful to trace the channel setting for the multichannel isochronous
context when the core function is requested it by both in-kernel unit
drivers and userspace applications.

This commit adds some tracepoints events for the aim.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-iso.c     |  2 ++
 include/trace/events/firewire.h | 21 +++++++++++++++++++++
 2 files changed, 23 insertions(+)

diff --git a/drivers/firewire/core-iso.c b/drivers/firewire/core-iso.c
index ddb999297c72..7ec84de846e6 100644
--- a/drivers/firewire/core-iso.c
+++ b/drivers/firewire/core-iso.c
@@ -177,6 +177,8 @@ EXPORT_SYMBOL(fw_iso_context_start);
 
 int fw_iso_context_set_channels(struct fw_iso_context *ctx, u64 *channels)
 {
+	trace_isoc_inbound_multiple_channels(ctx, *channels);
+
 	return ctx->card->driver->set_iso_channels(ctx, channels);
 }
 
diff --git a/include/trace/events/firewire.h b/include/trace/events/firewire.h
index 0cca1ef841f3..0334e02f9d94 100644
--- a/include/trace/events/firewire.h
+++ b/include/trace/events/firewire.h
@@ -541,6 +541,27 @@ DEFINE_EVENT_CONDITION(isoc_destroy_template, isoc_inbound_multiple_destroy,
 	TP_CONDITION(ctx->type == FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL)
 );
 
+TRACE_EVENT(isoc_inbound_multiple_channels,
+	TP_PROTO(const struct fw_iso_context *ctx, u64 channels),
+	TP_ARGS(ctx, channels),
+	TP_STRUCT__entry(
+		__field(u64, context)
+		__field(u8, card_index)
+		__field(u64, channels)
+	),
+	TP_fast_assign(
+		__entry->context = (uintptr_t)ctx;
+		__entry->card_index = ctx->card->index;
+		__entry->channels = channels;
+	),
+	TP_printk(
+		"context=0x%llx card_index=%u channels=0x%016llx",
+		__entry->context,
+		__entry->card_index,
+		__entry->channels
+	)
+);
+
 #undef QUADLET_SIZE
 
 #endif // _FIREWIRE_TRACE_EVENT_H
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
