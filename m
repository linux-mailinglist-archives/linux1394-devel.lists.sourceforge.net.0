Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 059CC714899
	for <lists+linux1394-devel@lfdr.de>; Mon, 29 May 2023 13:34:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1q3b92-0007JV-7O;
	Mon, 29 May 2023 11:34:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1q3b8z-0007Iz-Ad
 for linux1394-devel@lists.sourceforge.net;
 Mon, 29 May 2023 11:34:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hCn80S16t5KWMrqhGJtFmBVIPiQ9NKvnaZBu9C4Y5xc=; b=K7BjTJy4BSkkZ4/wojzQWWyWm2
 jRbtf0KDN5sZkPVVI2DPb74nQ+UYd1uCi8vGdXLDqo2ttXjLceQNG84QvLB2ZzU9J2y66u0Ffvz8E
 y5R885xE3eggXdInpXO9PHwJycPg/KCHf/34JeM7R/jWjY/m7VKC/Q8RxnGV22lSzY5c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hCn80S16t5KWMrqhGJtFmBVIPiQ9NKvnaZBu9C4Y5xc=; b=m9bIHZQHV9WzKBFLsYn0cnqmAj
 GrmY7Rp/9VcIQrlMxR4vHmF/SayjNT5tJPTc0t5MdChMVD1R3g5Z0fuK1IKQrgDuBZt7/tzttn7Hp
 2es8+ZtVeZwgBboRXiOKEE8gbsla9etFq8NdVsvdo7GMoOtSpRCJQm4+Ocga439hrM2Y=;
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q3b8y-005hn7-PU for linux1394-devel@lists.sourceforge.net;
 Mon, 29 May 2023 11:34:33 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.west.internal (Postfix) with ESMTP id 3DC163200929;
 Mon, 29 May 2023 07:34:27 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Mon, 29 May 2023 07:34:27 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:content-transfer-encoding:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm1; t=1685360066; x=
 1685446466; bh=hCn80S16t5KWMrqhGJtFmBVIPiQ9NKvnaZBu9C4Y5xc=; b=q
 3/PXv12ub3R543er7mtSqTG+UOl9z9RizPLl3+jLjcqk5V7W/0HqO8BjbPb5hmll
 ImZTRuZ+HREPQDUxoS0yCVs4zh2hBcGw8IDobLfre9D4Wbij9YFsJNd19CRuFYqp
 GjtzNwEgKBMun/4HXcr3Mp1BJsvhR0cQmTtCQnWQ03CKMa5NJnagzJXdBNwSm+Gd
 vttC3Gg+IJ+pQsd5N/2Pj5nyqP17wU+DU+3pObOUDoQlzvZVHeWQf8c+C311TJfT
 /KsezunhzL5BpsOh5Ql7ctUnRxPj0a0E7M/vMMzNwTBdcWHssoBO9TKvIHcgW871
 rpTEUf4F1i4e8W0mt+8eQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:date:feedback-id:feedback-id:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:sender
 :subject:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1685360066; x=1685446466; bh=h
 Cn80S16t5KWMrqhGJtFmBVIPiQ9NKvnaZBu9C4Y5xc=; b=BTn8MYuwszk8Iw27z
 MXblbdH/e4Ca9imlzuRm1qKQo6+2rKHcyIIXu1eK7vHR9dMvR537eRidlzctB8sD
 XzGHo48+GTorW3YpQpJQQuYR8Khuodiu1rpcJCDZvld6pPwQFVyMfnz3diiIBayy
 nhBOQB8mW1m7mGVCqDGxV8wtylJqL+IKSimuU0AnWuAT3uhFvn20NxtXF8+7AfK5
 jxOjpXXQMsZ8YUm1C1XTO5p6/KPBxdd9W3muxqos38PI5oIciOC/9HyGHzZLXR8B
 F+b93LZEUVkAvRsRrHdFJms9h+TMcGcyoLp8Q/crL1YqGAxFusUdGUnhFMfp53He
 /hXiA==
X-ME-Sender: <xms:wo10ZB6R9xdaUWVVttt73o5mkaRIzn_IsFj7OWDPYJ5ERMdTmRjHEQ>
 <xme:wo10ZO7ZZ7TSTSb42Ze14ZP9-npRHpIF5_qX7jfWi6pv5uI5ot-purP4zgBlX1tTo
 s4BvcXzhz9mJ5UA7S4>
X-ME-Received: <xmr:wo10ZIf2y2BOwdn6ZdhEfPx1OXOb6qQTbYnSL6dVI9bbY5yHysoCrX0Z4tAn-fmCYDUssID7fPQIPHUqnKy0NJkfPVFaR1DgwKCAHK3yxikNKQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfeekhedggeduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepveefffefke
 etgfevgeefleehfffhueejtdejveethfekveektdejjedvtdejhfejnecuvehluhhsthgv
 rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:wo10ZKKtrBHvKh0U43kM_jGvz8Q3SEfcFcx4LPcMLGVSraEvibrHNQ>
 <xmx:wo10ZFI-IXTAbUc9-F2rJjEXiRFixbBo06yrvDC45OKUWRpmiX4KnA>
 <xmx:wo10ZDzRo2CF_eFhgMYxMMktJDsKR5S1ij4wC_uwK2WCuJQuC26M7g>
 <xmx:wo10ZHy9OMs6zEbMzTMba4pqmM3AfhGcwH2m0t88_OrKgBWDJS8uAA>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 29 May 2023 07:34:25 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 07/12] firewire: cdev: code refactoring to operate event of
 response
Date: Mon, 29 May 2023 20:34:01 +0900
Message-Id: <20230529113406.986289-8-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230529113406.986289-1-o-takashi@sakamocchi.jp>
References: <20230529113406.986289-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This commit is a preparation to handle time stamp of
 asynchronous
 transaction for user space application. Signed-off-by: Takashi Sakamoto
 <o-takashi@sakamocchi.jp>
 --- drivers/firewire/core-cdev.c | 27 +++++++++++++++ 1 file changed, 15
 insertions(+), 12 deletions(-) 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1q3b8y-005hn7-PU
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

This commit is a preparation to handle time stamp of asynchronous
transaction for user space application.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-cdev.c | 27 +++++++++++++++------------
 1 file changed, 15 insertions(+), 12 deletions(-)

diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index 5a9446d30447..315ebc8c545d 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -170,7 +170,9 @@ struct outbound_transaction_event {
 	struct event event;
 	struct client *client;
 	struct outbound_transaction_resource r;
-	struct fw_cdev_event_response response;
+	union {
+		struct fw_cdev_event_response without_tstamp;
+	} rsp;
 };
 
 struct inbound_transaction_event {
@@ -540,7 +542,7 @@ static void complete_transaction(struct fw_card *card, int rcode,
 				 void *payload, size_t length, void *data)
 {
 	struct outbound_transaction_event *e = data;
-	struct fw_cdev_event_response *rsp = &e->response;
+	struct fw_cdev_event_response *rsp = &e->rsp.without_tstamp;
 	struct client *client = e->client;
 	unsigned long flags;
 
@@ -581,6 +583,8 @@ static int init_request(struct client *client,
 			int destination_id, int speed)
 {
 	struct outbound_transaction_event *e;
+	struct fw_cdev_event_response *rsp;
+	void *payload;
 	int ret;
 
 	if (request->tcode != TCODE_STREAM_DATA &&
@@ -594,14 +598,14 @@ static int init_request(struct client *client,
 	e = kmalloc(sizeof(*e) + request->length, GFP_KERNEL);
 	if (e == NULL)
 		return -ENOMEM;
-
 	e->client = client;
-	e->response.length = request->length;
-	e->response.closure = request->closure;
 
-	if (request->data &&
-	    copy_from_user(e->response.data,
-			   u64_to_uptr(request->data), request->length)) {
+	rsp = &e->rsp.without_tstamp;
+	rsp->length = request->length;
+	rsp->closure = request->closure;
+	payload = rsp->data;
+
+	if (request->data && copy_from_user(payload, u64_to_uptr(request->data), request->length)) {
 		ret = -EFAULT;
 		goto failed;
 	}
@@ -611,10 +615,9 @@ static int init_request(struct client *client,
 	if (ret < 0)
 		goto failed;
 
-	fw_send_request(client->device->card, &e->r.transaction,
-			request->tcode, destination_id, request->generation,
-			speed, request->offset, e->response.data,
-			request->length, complete_transaction, e);
+	fw_send_request(client->device->card, &e->r.transaction, request->tcode, destination_id,
+			request->generation, speed, request->offset, payload, request->length,
+			complete_transaction, e);
 	return 0;
 
  failed:
-- 
2.39.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
