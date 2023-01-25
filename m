Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 628F367B235
	for <lists+linux1394-devel@lfdr.de>; Wed, 25 Jan 2023 13:03:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1pKeV4-0005BQ-Ff;
	Wed, 25 Jan 2023 12:03:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1pKeV3-0005Au-2z
 for linux1394-devel@lists.sourceforge.net;
 Wed, 25 Jan 2023 12:03:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Td3n4i3eo0pZ/YzFAwc9ILQot5TU2fewRmEKzxit+m4=; b=evH6eqlE8R7XKNlSGQmKsloDWq
 EBT1NN2ARVb+SQdfZAqNoC7wBHJ+lkYwLHpA6EwNfqLnOAWtEzs9BmW269yeZs6QlidrrWP37Oapf
 yhb6JQe4KmcosVCzOzyhl0bTsK1O14/6rcwkYdj65T1l9DThFn1+AoNpPTeFrXyO5Ckk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Td3n4i3eo0pZ/YzFAwc9ILQot5TU2fewRmEKzxit+m4=; b=ZvTlymp/NrSXRDHKffa5tFRuY3
 48tl5K3wRIlbClVNmgFb/dFw0aG0vhKkd0hSwBaLQDHxexV/DyZDOATj58O8g/tldEMqA56DY+SHt
 /i4ZcWeF51V1LgZVevmWSzaOIpKn3VmiNcZzpceTAFglycJUpBIrJH4YOEEnhTv3CNFk=;
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pKeV0-00FITo-UL for linux1394-devel@lists.sourceforge.net;
 Wed, 25 Jan 2023 12:03:31 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailout.nyi.internal (Postfix) with ESMTP id E12C95C00CC;
 Wed, 25 Jan 2023 07:03:15 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute1.internal (MEProxy); Wed, 25 Jan 2023 07:03:15 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm3; t=1674648195; x=
 1674734595; bh=Td3n4i3eo0pZ/YzFAwc9ILQot5TU2fewRmEKzxit+m4=; b=k
 Uo0gQLyLNJW+UyVAOirV8jtoAfLzOmECRH+ra9/HiP4BjMmeHEOxQ5e68rTeMXdo
 FG7lbhieHIEmTVM7DdjS/ooqrY1gIWYfIyHz0OTyU1WmgJBPqLkQ+u9ZDDGhpOZg
 O53WZXQR7VIyHH73PS0ltggUvVdcGgjLveWyY/iw1BApSUTorZUGZ2tY9zZ1WC8x
 isitWWQz1T2/8o+hQJatHdIRQBiXZKUJ3wQKitVPdbADXsv1MWlxD1TTpDMKEi2k
 gd0YdN/T8zRFXdP65X3xYQ8EyQRZfVBn/e2AtTJuKJi5G8j2ta+Nbk3Rv39Y9aw6
 3YW1SYgYqZgekm7lxxxnw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm3; t=1674648195; x=1674734595; bh=Td3n4i3eo0pZ/
 YzFAwc9ILQot5TU2fewRmEKzxit+m4=; b=btzLo31dmt8bZiNJi7JAcRsOv+PsL
 ttF33H/qTOiQQ/Sf9qBfhAGXUc3sRusyannd+0/r3hdDwyTTuUOESOq/aiXsAu9G
 kKF0yxOO0CmZw3VbB5rReg4UJyhwNRiYHzT9KXViDmG3jDSR1KA8d0hS4+iBtNmc
 cBmdREuMh7s9P1PgcGswzynLr7n6Hmk3Z3o0sD8H0aieDkx/vPTNa1JQDSRVSVPH
 wyggnykR2W0YYwYPRVZfTisikoGsaQdOWOzeYsRaTtDxBPOtrVsRvK1W/uTnh200
 HglAzghZhKx6sGxXBN+XYxy/TsV0+3dBYtAJUzIzkoeusUdgudFn+Y/kw==
X-ME-Sender: <xms:gxrRY7pbFVm8nSrobsAHlg6ycL9L74sTc5L4CV6VDQhlcHSyP5_F-g>
 <xme:gxrRY1pG70GPUX79O6MisgQWAwwH9pmX1hAOMQdlxotRtXsZKNUqdXaF7dl-eDc4y
 l8NW2EJFXzqYN2zbfU>
X-ME-Received: <xmr:gxrRY4MobuolfeFhK_hHVFHy8K2LG3zeeHMm9X8aTJETnCNimf6dmpmXHgmMFqs9g9gQY9kP9xDymfKkzugAFUL3r0FWjUKW4OyxPH0ue1GZmt0Pms0FD8A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedruddvvddgfeehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:gxrRY-5d9AAIJQw6foTpNBdagXTFO3T75pTrP-xkaEKN2I2NpHWHfQ>
 <xmx:gxrRY66WGyxiVKZwYjPahncjtpSUqS8YVE751s-hP_Y7y8bo8oiZlw>
 <xmx:gxrRY2gYbt4oiu1iKQO6VRjZ76Wz_KD3AsO8jziTgzAozAZFy-qyow>
 <xmx:gxrRY6GLFWg8sDyhv3cnsSZuLe4PMpUx-G9Qs190jQTYmqGENDJjTg>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 25 Jan 2023 07:03:14 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: stefanr@s5r6.in-berlin.de
Subject: [PATCH 06/11] firewire: cdev: code refactoring to operate event of
 response
Date: Wed, 25 Jan 2023 21:02:56 +0900
Message-Id: <20230125120301.51585-7-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230125120301.51585-1-o-takashi@sakamocchi.jp>
References: <20230125120301.51585-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
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
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [66.111.4.27 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1pKeV0-00FITo-UL
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
Cc: tiwai@suse.de, linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
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
2.37.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
