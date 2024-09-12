Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F68B976AA4
	for <lists+linux1394-devel@lfdr.de>; Thu, 12 Sep 2024 15:31:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sojuc-0000JF-A7;
	Thu, 12 Sep 2024 13:31:06 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sojuY-0000J3-W5
 for linux1394-devel@lists.sourceforge.net;
 Thu, 12 Sep 2024 13:31:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YLAUq3NUe155VrLSf5ng8mFVHvyTPYxEL/05VRMpxfs=; b=kidsSrvoTBmPZkctLdtwg2onaC
 uX0Z1kqUA2wZ2AQJUn9OsBmsBBBX3pgJL2E4fDGJxn5lMX3xkEb8IMad89C2Dl3dgjVYI1wzcKP2c
 7deDW/kKUwiTZLdplNDOabJLn4rJCf/f9utQFR3JnUTTDi4ekbl5d1OJlfh/oAL4vogY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YLAUq3NUe155VrLSf5ng8mFVHvyTPYxEL/05VRMpxfs=; b=jdI9BEEjkuU9eJaXLCewUz2G7q
 8yJOq7OcEvc3FtN67k2K674YOiqA9+YQzT7bYeSo0BBwyELhHqx/W/ovZr3yikLiv0GGCzoNfmzDl
 DwOrFlHrU6zJuHxeZr+yd/fdCEjGRO502Ba5S/HbG9I/21y3svua/DVK4y2aO/VvHcdY=;
Received: from fout3-smtp.messagingengine.com ([103.168.172.146])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sojuY-0000YR-6u for linux1394-devel@lists.sourceforge.net;
 Thu, 12 Sep 2024 13:31:02 +0000
Received: from phl-compute-07.internal (phl-compute-07.phl.internal
 [10.202.2.47])
 by mailfout.phl.internal (Postfix) with ESMTP id A4EF91380547;
 Thu, 12 Sep 2024 09:30:51 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-07.internal (MEProxy); Thu, 12 Sep 2024 09:30:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1726147851; x=
 1726234251; bh=YLAUq3NUe155VrLSf5ng8mFVHvyTPYxEL/05VRMpxfs=; b=g
 6Y8Jv8tGA3BehRIpjeAXyiVadHrE0CPW40p8N/wmJ4MxnJzwLfvivR9BGktR6ovE
 fDrm7fdv3rKj0G+D8ZqEvcO1bpDeHJrR8lZz/Ql9yJ4X0t9SPiPT/SmzI+vdJnPp
 F/PbcJkZMSoniQ0WO+S1zt8ukw6oXnoIk+t1GmTc9qRI9jh+Istve89IPlqtbO1w
 5+/Ir/gjP9HuBGz3yY8RIYSycMaLtiHFsZu0NhndTj+OcEOZDvDMmNqvG15r9wp4
 N2rQr2e64Ym7riSxeWT4RaZHQ858F4bgbpMOHV44bgzxDp+J3pEu77FLI9sFfaGH
 +coweylEhqlnsvseff9fg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1726147851; x=
 1726234251; bh=YLAUq3NUe155VrLSf5ng8mFVHvyTPYxEL/05VRMpxfs=; b=J
 jALnz9HRr9yxjKa19LP/ecZBmxa3mQhDxN/TgQwnnQjdxNCJcQNxNsOW/ZnpP2QA
 lwUIx6ZX5oQKMPBsMF1tZfxTikzpzBh9KWxqOOAEOLQWXDh9ciM7gRtZ+LGiRGJZ
 FmMz06x2qICFfh3FMSPebnM8IKXVA223WCZRWxPiIPIJDrSwFu6hwSIhYLo21z9N
 fZdl+yJ5YfDyAwK9sprPM9CxxAG9UtnDVKXNBCbIrlFdD39Bdyml4yI+4IAzopx8
 WXGXDoDGIVGJnTbnhoKjKFph3lA8xGo5BVRFNOnAO4V8OEdgi1cgGGsIJvmZcXNa
 Pj+6FqjYnEKUImqA7YCsQ==
X-ME-Sender: <xms:C-3iZiLZikZzTqlZ-KoeTnGTi6kj44TYjpuVifvjmGPyQ4UgcWRaoA>
 <xme:C-3iZqIbgbd1bgqwX2zx2pwCUGWLcjAy5HajrIWLkqL7mMimg1oWI3afrYmf8u9I7
 ZKxiy6mOG4b-jk7egA>
X-ME-Received: <xmr:C-3iZiuohA3QW-bVoIyJsjoT7LeukHihYDGqPAyvrkDL4LPL4ILBYXU6yrX7ZI2hzNodgrWmQmRUE7HxG1oRL-IkTq4Ea6ah26jXSHd4RaOIhA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudejfedgieeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevuf
 ffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghm
 ohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrg
 htthgvrhhnpeeulefhkefghfekveevvdefgfekhfeftdduhfegheegffdtudeuvdekffdu
 hefgveenucffohhmrghinheptggrlhhlsggrtghkrdhmtgenucevlhhushhtvghrufhiii
 gvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrghm
 ohgttghhihdrjhhppdhnsggprhgtphhtthhopedvpdhmohguvgepshhmthhpohhuthdprh
 gtphhtthhopehlihhnuhigudefleegqdguvghvvghlsehlihhsthhsrdhsohhurhgtvghf
 ohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgvrhdrkh
 gvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:C-3iZnaoGYcCmflLdIaIdeSXuFpopkyXX6Ygj6DX2PfzkUTRCThUtg>
 <xmx:C-3iZpaCUnBi3Q3TiGje97e9Kg1gS2M_SE_qr8k0ZC0dBSLa6GGM1w>
 <xmx:C-3iZjD6ouuSoQigRLK6SoZRFTqulKro-6WxgAoiD2IgbVOwHt7AkQ>
 <xmx:C-3iZvY3CXhUtAuZx6ckR5WybWIZmgLFbwA7Ust3cpPvMvAsrsgYzg>
 <xmx:C-3iZokMN4ByZN5IsWE6iCrvYYvF9q_wTPaIzuDgePAtLve4UOJTCqNq>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 12 Sep 2024 09:30:50 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 5/5] firewire: core: rename cause flag of tracepoints event
Date: Thu, 12 Sep 2024 22:30:38 +0900
Message-ID: <20240912133038.238786-6-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240912133038.238786-1-o-takashi@sakamocchi.jp>
References: <20240912133038.238786-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The flag of FW_ISO_CONTEXT_COMPLETIONS_CAUSE_IRQ directly
 causes hardIRQ request by 1394 OHCI hardware when the corresponding
 isochronous
 packet is transferred, however it is not so directly associate [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.146 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1sojuY-0000YR-6u
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

The flag of FW_ISO_CONTEXT_COMPLETIONS_CAUSE_IRQ directly causes hardIRQ
request by 1394 OHCI hardware when the corresponding isochronous packet is
transferred, however it is not so directly associated to hardIRQ
processing itself.

This commit renames the flag so that it relates to interrupt parameter of
internal packet data.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c         | 6 +++---
 include/trace/events/firewire.h | 4 ++--
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 4af4c9af4fe4..7ee55c2804de 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -2927,7 +2927,7 @@ static int handle_ir_packet_per_buffer(struct context *context,
 	copy_iso_headers(ctx, (u32 *) (last + 1));
 
 	if (last->control & cpu_to_le16(DESCRIPTOR_IRQ_ALWAYS))
-		flush_iso_completions(ctx, FW_ISO_CONTEXT_COMPLETIONS_CAUSE_IRQ);
+		flush_iso_completions(ctx, FW_ISO_CONTEXT_COMPLETIONS_CAUSE_INTERRUPT);
 
 	return 1;
 }
@@ -2963,7 +2963,7 @@ static int handle_ir_buffer_fill(struct context *context,
 
 	if (last->control & cpu_to_le16(DESCRIPTOR_IRQ_ALWAYS)) {
 		trace_isoc_inbound_multiple_completions(&ctx->base, completed,
-							FW_ISO_CONTEXT_COMPLETIONS_CAUSE_IRQ);
+							FW_ISO_CONTEXT_COMPLETIONS_CAUSE_INTERRUPT);
 
 		ctx->base.callback.mc(&ctx->base,
 				      buffer_dma + completed,
@@ -3059,7 +3059,7 @@ static int handle_it_packet(struct context *context,
 	ctx->header_length += 4;
 
 	if (last->control & cpu_to_le16(DESCRIPTOR_IRQ_ALWAYS))
-		flush_iso_completions(ctx, FW_ISO_CONTEXT_COMPLETIONS_CAUSE_IRQ);
+		flush_iso_completions(ctx, FW_ISO_CONTEXT_COMPLETIONS_CAUSE_INTERRUPT);
 
 	return 1;
 }
diff --git a/include/trace/events/firewire.h b/include/trace/events/firewire.h
index b108176deb22..ad0e0cf82b9c 100644
--- a/include/trace/events/firewire.h
+++ b/include/trace/events/firewire.h
@@ -830,13 +830,13 @@ TRACE_EVENT_CONDITION(isoc_inbound_multiple_queue,
 #ifndef show_cause
 enum fw_iso_context_completions_cause {
 	FW_ISO_CONTEXT_COMPLETIONS_CAUSE_FLUSH = 0,
-	FW_ISO_CONTEXT_COMPLETIONS_CAUSE_IRQ,
+	FW_ISO_CONTEXT_COMPLETIONS_CAUSE_INTERRUPT,
 	FW_ISO_CONTEXT_COMPLETIONS_CAUSE_HEADER_OVERFLOW,
 };
 #define show_cause(cause) 								\
 	__print_symbolic(cause,								\
 		{ FW_ISO_CONTEXT_COMPLETIONS_CAUSE_FLUSH, "FLUSH" },			\
-		{ FW_ISO_CONTEXT_COMPLETIONS_CAUSE_IRQ, "IRQ" },			\
+		{ FW_ISO_CONTEXT_COMPLETIONS_CAUSE_INTERRUPT, "INTERRUPT" },		\
 		{ FW_ISO_CONTEXT_COMPLETIONS_CAUSE_HEADER_OVERFLOW, "HEADER_OVERFLOW" }	\
 	)
 #endif
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
