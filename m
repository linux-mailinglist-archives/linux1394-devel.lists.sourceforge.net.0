Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 207467109DA
	for <lists+linux1394-devel@lfdr.de>; Thu, 25 May 2023 12:17:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1q281c-0008Lt-0Z;
	Thu, 25 May 2023 10:16:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1q281Z-0008LF-E5
 for linux1394-devel@lists.sourceforge.net;
 Thu, 25 May 2023 10:16:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hCn80S16t5KWMrqhGJtFmBVIPiQ9NKvnaZBu9C4Y5xc=; b=apBEScvrSQAPjxv9PiXlpW9Jx1
 4lLao255u7kfX23qKv9DVfzkVTYcLCDSOX1rq5bZegkRomjICWp93AKLtJwyFhRYpaQ9VZj6Ckiv9
 BGOnv1o0iPWNMG8OkkfTT9OXm+vR7mMfNflsNmk7HV5cis5lPOgtaTQSoAFOqQ1x98f0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hCn80S16t5KWMrqhGJtFmBVIPiQ9NKvnaZBu9C4Y5xc=; b=j3ye7dDk2Xz+jsilBMupzYvWal
 pyA9ot4pcLjpL8u/nck7SF6d0k6kn2NiJ56UPNkcg2jnXoRNmvLXA/NypGcVJV53zGn6U2svb544n
 9EJAaTWlJhjVAUe+9RaYWGrROK7tnNppgshQKdJ+oc+TjRVub9uXZDJ1w/zTLghLvUr0=;
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q281Y-0004W0-9l for linux1394-devel@lists.sourceforge.net;
 Thu, 25 May 2023 10:16:50 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.nyi.internal (Postfix) with ESMTP id 67BD85C01A2;
 Thu, 25 May 2023 06:16:39 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Thu, 25 May 2023 06:16:39 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:content-transfer-encoding:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm1; t=1685009799; x=
 1685096199; bh=hCn80S16t5KWMrqhGJtFmBVIPiQ9NKvnaZBu9C4Y5xc=; b=S
 pX+U/7bbNrznA7H2rB6zu/T594d7BHGsU1A5ERwF0Xgu9TYlHw1XjggBptgpLH/x
 jF/EHY+ykLsMS3bSZVw2WcED+vJtDDVh3K5lphxGcy5QyVNG5p7MrYPbqbaiRnM+
 mCDh9M3xkAjKR0mSgl97bAvDqWsWr65H6IjExxTbd/ZC4nlixOWdu7bC8iH3IVaO
 XMBefErDfgizeI09MXW8HlnkcQLxTSSV4XGbQTaycND9ZHhm7XItdStXJ5TKyEpX
 EuitHfReSaucXfZjoRX7tv0XzRRNqOkXD6IneJM5BCoVL4l6WiwRXioRGb2WCGkN
 BhOl15iPWZmfEThmHNMrQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:date:feedback-id:feedback-id:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:sender
 :subject:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1685009799; x=1685096199; bh=h
 Cn80S16t5KWMrqhGJtFmBVIPiQ9NKvnaZBu9C4Y5xc=; b=ygaLTXeBUT6MZMicC
 7rM0fte9LEZe6X/8daKcUvK1/RTt132TipqEhhdaUzWKXhnDBScr3rIixUCvkmkH
 2Mgmq8NC9VloOvPo88+fCco4P0uoLUpAgBScWq+tpqSkg5FxHZbFSdFAxUR2BPmJ
 J0RCpPyzeBHokygzF2iWFYan+p5wm7pG3a6+Zoz/EySqsMEy4g9DlQdSNIU/lO2g
 jVL4jwSBG2ybzws89yb2rjQ1PtihB/411JkJoMRxqG24EpIWsBk1md+jNaFwa96x
 bVX7r7dnEl1B9adPu+w3l0bc+P60Uhn9ql0PqWAHhyGYslphrvG5mWvuhuxLIMtQ
 kse5w==
X-ME-Sender: <xms:hzVvZOgb1dl4bdUcCqlM4uepxOpNmfmQ4CXXHJliwSo7V60gR3_nMQ>
 <xme:hzVvZPBtpWiMK9SFKGgJJxRA55p5CPigyiRn6j4zciAS1g6I85rjpC6WrPvMXgGKV
 P3ZoGv5oKxwXQ6HLH8>
X-ME-Received: <xmr:hzVvZGHH1Z9L9isOR6hojdTHe0AiQVsdq-CMzLG5z9iB8sBUldB1H9-ZtGaB_XqqsfAQ5oGJSVoHe8uqi8Xoai88QlvJ2FbokOIi9kQRC6hZUw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfeejjedgvdehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepveefffefke
 etgfevgeefleehfffhueejtdejveethfekveektdejjedvtdejhfejnecuvehluhhsthgv
 rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:hzVvZHR2dk-CIUaPq6wyfsKYDrBBo7PbxjP_J0KUiggtxQBczbrajA>
 <xmx:hzVvZLxrEEuAGofHI0ouYd8VNG3wT2nzq7SKH98eiO0AINzYPllDwg>
 <xmx:hzVvZF5j_5D-AacAZt-wI6fFvfnnTtdEGcBTiaFd_Es0hUYyILiIwQ>
 <xmx:hzVvZJYPtpnVo4zAiii2nZOXwHjP_LAnHvCuiD0n34DjZXr9A2gVuQ>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 25 May 2023 06:16:38 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 07/12] firewire: cdev: code refactoring to operate event of
 response
Date: Thu, 25 May 2023 19:16:20 +0900
Message-Id: <20230525101625.888906-8-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230525101625.888906-1-o-takashi@sakamocchi.jp>
References: <20230525101625.888906-1-o-takashi@sakamocchi.jp>
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
 low trust [66.111.4.28 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.28 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1q281Y-0004W0-9l
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
