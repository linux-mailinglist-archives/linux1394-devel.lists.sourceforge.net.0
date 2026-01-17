Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E3E0AD38F0E
	for <lists+linux1394-devel@lfdr.de>; Sat, 17 Jan 2026 15:28:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wB7Q98mVES3UkIXSP90vZhQq3cBzkW1suW2ID7w4ofU=; b=bkgdjfdLHZHJkko2lFc3ePRe5r
	5S1I5LHqhoOGwQwauxWjuLBgBEl99iWquQQSon1mhBUVVCy8SArt372NoHeT4DfJcGJ98V6beZXWC
	XgHXm+k0UtWWS9b3goqorR8DtD3X5WPjU76LDjgCDEVTz72vYdkc2Ue92qupaRTteIKw=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1vh7IB-0005dC-Qb;
	Sat, 17 Jan 2026 14:28:43 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1vh7IA-0005d2-Lp
 for linux1394-devel@lists.sourceforge.net;
 Sat, 17 Jan 2026 14:28:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0o98L6X7Ww81vUo8K0bKIgUHwJe62JrsMwr69W87+Ws=; b=hVgjUlqsY8pCk9iArL/h1eGjAY
 Nq2y55lWzj60jG5wR6Zv3qfVqSAWHb5v8R/ZUrjtLzC8Zcr++bgT0hXusm7+gev+ii2BBBhGyU59o
 9hoJ0L6L9JJMsNuPM4G1qocxwGIQSClznmmN0piL6N1D/miXDL8A3uo4cqjlqsevc6I4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0o98L6X7Ww81vUo8K0bKIgUHwJe62JrsMwr69W87+Ws=; b=jdne0A0dqfjvy5ukdzrUaIIxyQ
 VK96dJC/L1cbE4b9z3KV/EqKcWGvbrLmltuAYjOz7GsPHCpVySCjVRzPV0lsdZye7Zi2k98kooW/0
 vq/Y6q/xF2S0dpwj8lMN8/laZ4+9G3GaN8TaFpb/IrVvXkI1VP2fOOE4fhxd6tt5D0io=;
Received: from fhigh-b6-smtp.messagingengine.com ([202.12.124.157])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vh7I8-0001W6-Si for linux1394-devel@lists.sourceforge.net;
 Sat, 17 Jan 2026 14:28:41 +0000
Received: from phl-compute-05.internal (phl-compute-05.internal [10.202.2.45])
 by mailfhigh.stl.internal (Postfix) with ESMTP id 58BC97A0333;
 Sat, 17 Jan 2026 09:28:35 -0500 (EST)
Received: from phl-frontend-04 ([10.202.2.163])
 by phl-compute-05.internal (MEProxy); Sat, 17 Jan 2026 09:28:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1768660115; x=
 1768746515; bh=0o98L6X7Ww81vUo8K0bKIgUHwJe62JrsMwr69W87+Ws=; b=d
 5FnrnQwCbfIu2IKsAbOzm0N65IIEjnYjSQlx7BEFWrry1vveaB0DlQRmLPhZ5S+6
 JzJ2/WTsoZnyIM4dLn8OznI5s3NloK1V/o8ltEEZLkiyEoLyld0NlHU2Y/S39vw3
 QHYFvKhhkDuSJlIGw7mJg5mUBl0+Fn0bB9ib2yMXU+lCghIamAvIB2m1oxOZPkpo
 dz/jqNKd2V4EnSs3UKCRKj25hWIk3N/jsQpoohWtqkWUaR0q/ggtWSvZy/soM3SN
 CAuzmucrYjRXICOqJgsAehGgfo0e6094oDxtuM+pO+l+iC4SpBW8kP9AgwXQiqBs
 ta4Q4SUhVFHg/bYuoBNvA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm2; t=1768660115; x=1768746515; bh=0
 o98L6X7Ww81vUo8K0bKIgUHwJe62JrsMwr69W87+Ws=; b=YQF4BhNt/vzyJC7Hb
 GQGfb6gkBAmUCRnkCmnjGiNBonFCkSeta/fmmrfS9hO1Se8dSspi9DOR18FncD+J
 95RIoSkncTK37n4VHyY+wGxm4BLVbEFFFbCGT3MnmHS2mXw5rOgDbAOfX2xDQDq9
 g3EKC18KhzcDDHDCdPdpqXuf07F98ykm3t4gu88aYJHEqLCpGZNaeEafCdXma38e
 Iajyz8Di+YqKOqie72My0UKussGei1nRbxsOWcyBq4yKdjso94nsAcWjGaxwLQ3+
 0d4Y3ARys1kj/EScX+J6SYCK9RKTq7aQX4mYEXCQ0aB7zSWyYT+9Cr8ZtYy9v11X
 WY+Bw==
X-ME-Sender: <xms:k5xradd7crDU-P4Xw2_LpZBX0Mst7-99HwdWf4hpBCHXvsmEYI8z1Q>
 <xme:k5xrabVlx6LL6QPNn1SwLHBDuhlwh8ElG8e3MxQ8x8ExvPk-5kjQRyY3avSjpFCtx
 -AilxgCyayOlIIMbYVY8xY3Uw8HLcLRsoiY6gYZ8H1NtWlRUhf4kA>
X-ME-Received: <xmr:k5xraef19ZocEcFuqXRxNg9y0KxFgksX5_ojUPD-NNyuTOPMpUQpdlQXufNm7EfEzxUGsONeHr-GIuJiEYxrMpWbbT3Dk6W3P-A1BIGMxs7ehw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddufedvtdehucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgjeeuvd
 fguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushhtvghr
 ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrg
 hkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopeefpdhmohguvgepshhmthhpohhu
 thdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlsehlihhsthhsrdhsohhurh
 gtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgv
 rhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplhhinhhugidqshhouhhnugesvhhgvg
 hrrdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:k5xrafP9yVv5dUOS6Ov4PAaZ9AlZ3S8Ee8k_HHM0DFlYbVj6cOP2-Q>
 <xmx:k5xraUiAF9PUwoIC57Q8h4-pXBGFeDTsK-8ZZrSknEbDbyTCn375Tw>
 <xmx:k5xraa1cwokvpVoEBqDmV1GleQiRquKehwpmPoonzLIf9HnYrNxP9A>
 <xmx:k5xraWgZwmn9cEnt5m_o1e4iOZOLBU2-IIvDYy3ZtL-zc_cjZKiIiA>
 <xmx:k5xrabywV8mrummUGq-8zBrAnHKqhFXEkwmNkcS6t0-K39Nz2IoTdQeH>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 17 Jan 2026 09:28:34 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 5/9] firewire: core: add flags member for isochronous context
 structure
Date: Sat, 17 Jan 2026 23:28:18 +0900
Message-ID: <20260117142823.440811-6-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260117142823.440811-1-o-takashi@sakamocchi.jp>
References: <20260117142823.440811-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  This is minor code refactoring to add a flag member to the
 isochronous context structure. At present, it is used only for the option
 to drop packets when the context header overflows. Signed-off-by: Takashi
 Sakamoto <o-takashi@sakamocchi.jp> --- drivers/firewire/core-cdev.c | 2 +-
 drivers/firewire/core-iso.c | 1 + drivers/firewire/ohci.c | 4 ++--
 include/linux/firewire.h | 6 +++++- [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1vh7I8-0001W6-Si
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
Cc: linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

This is minor code refactoring to add a flag member to the isochronous
context structure. At present, it is used only for the option to drop
packets when the context header overflows.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-cdev.c | 2 +-
 drivers/firewire/core-iso.c  | 1 +
 drivers/firewire/ohci.c      | 4 ++--
 include/linux/firewire.h     | 6 +++++-
 4 files changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index c26bea253208..9e964fdd175c 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -1064,7 +1064,7 @@ static int ioctl_create_iso_context(struct client *client, union ioctl_arg *arg)
 	if (IS_ERR(context))
 		return PTR_ERR(context);
 	if (client->version < FW_CDEV_VERSION_AUTO_FLUSH_ISO_OVERFLOW)
-		context->drop_overflow_headers = true;
+		context->flags |= FW_ISO_CONTEXT_FLAG_DROP_OVERFLOW_HEADERS;
 
 	// We only support one context at this time.
 	scoped_guard(mutex, &client->iso_context_mutex) {
diff --git a/drivers/firewire/core-iso.c b/drivers/firewire/core-iso.c
index d9b8896c8ce1..fbbd14d21ca4 100644
--- a/drivers/firewire/core-iso.c
+++ b/drivers/firewire/core-iso.c
@@ -151,6 +151,7 @@ struct fw_iso_context *__fw_iso_context_create(struct fw_card *card, int type, i
 	ctx->type = type;
 	ctx->channel = channel;
 	ctx->speed = speed;
+	ctx->flags = 0;
 	ctx->header_size = header_size;
 	ctx->callback = callback;
 	ctx->callback_data = callback_data;
diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 6760c8d12637..8bba70b65ad7 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -2756,7 +2756,7 @@ static void copy_iso_headers(struct iso_context *ctx, const u32 *dma_hdr)
 	u32 *ctx_hdr;
 
 	if (ctx->sc.header_length + ctx->base.header_size > PAGE_SIZE) {
-		if (ctx->base.drop_overflow_headers)
+		if (ctx->base.flags & FW_ISO_CONTEXT_FLAG_DROP_OVERFLOW_HEADERS)
 			return;
 		flush_iso_completions(ctx, FW_ISO_CONTEXT_COMPLETIONS_CAUSE_HEADER_OVERFLOW);
 	}
@@ -2925,7 +2925,7 @@ static int handle_it_packet(struct context *context,
 	sync_it_packet_for_cpu(context, d);
 
 	if (ctx->sc.header_length + 4 > PAGE_SIZE) {
-		if (ctx->base.drop_overflow_headers)
+		if (ctx->base.flags & FW_ISO_CONTEXT_FLAG_DROP_OVERFLOW_HEADERS)
 			return 1;
 		flush_iso_completions(ctx, FW_ISO_CONTEXT_COMPLETIONS_CAUSE_HEADER_OVERFLOW);
 	}
diff --git a/include/linux/firewire.h b/include/linux/firewire.h
index 68161b8a8a58..71d5cc8f28ce 100644
--- a/include/linux/firewire.h
+++ b/include/linux/firewire.h
@@ -546,13 +546,17 @@ union fw_iso_callback {
 	fw_iso_mc_callback_t mc;
 };
 
+enum fw_iso_context_flag {
+	FW_ISO_CONTEXT_FLAG_DROP_OVERFLOW_HEADERS = BIT(0),
+};
+
 struct fw_iso_context {
 	struct fw_card *card;
 	struct work_struct work;
 	int type;
 	int channel;
 	int speed;
-	bool drop_overflow_headers;
+	int flags;
 	size_t header_size;
 	union fw_iso_callback callback;
 	void *callback_data;
-- 
2.51.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
