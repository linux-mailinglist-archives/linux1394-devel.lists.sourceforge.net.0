Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C75767B237
	for <lists+linux1394-devel@lfdr.de>; Wed, 25 Jan 2023 13:03:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1pKeV0-0006wU-M2;
	Wed, 25 Jan 2023 12:03:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1pKeUv-0006wD-Ua
 for linux1394-devel@lists.sourceforge.net;
 Wed, 25 Jan 2023 12:03:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vxkfReO71prrNWdj/ls9FxWUEiwc8tsI0fkpO1vRHYI=; b=T9KbCLdzw4ZGyRiBToCtoZO1ic
 UMMQZPenNUwWvw+nR2/62vbr/vcK4cPBx7oetu+2j1LDBgbALiDIIOdrlE1hSorhvQ2Hx6l+IgTAx
 Q3jtpAd1MGxAazdH8HJaOE1u3DC8t5lPAlNQvtzrljSilrNI1XWhic8eWLo74HWwPuSE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vxkfReO71prrNWdj/ls9FxWUEiwc8tsI0fkpO1vRHYI=; b=Qqk4JZlxQ2sOPmn0R3Pz4aGNfi
 wahF+Gp4G66G6J1Te2ICWXeJ7YQThh7Urx2QPcDEzGv/hiorm2wfU9h0TkLDe64q8YEgx9cfRvEc5
 hmomHUw8j9O6pf+6fqQsiRwpzn485wO7OZFS+IR79DHquhOCxy/c5Ca7mJICCsnaGVpI=;
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pKeUm-00FITD-Se for linux1394-devel@lists.sourceforge.net;
 Wed, 25 Jan 2023 12:03:25 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailout.nyi.internal (Postfix) with ESMTP id 50F5A5C01B0;
 Wed, 25 Jan 2023 07:03:11 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Wed, 25 Jan 2023 07:03:11 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm3; t=1674648191; x=
 1674734591; bh=vxkfReO71prrNWdj/ls9FxWUEiwc8tsI0fkpO1vRHYI=; b=g
 CcUsXMhP/iS0ZOgXVGbyoru3SKvETDxPDdO5Ehqp8ekpRZheA6+4TarNidxmBu0y
 vqpCRqBvfSOfCV5TNmKVutRDatHnzP0DjsCK2Pb79iilVJ8K9OTCfI10F7h42qw+
 FMZqZVPJqkW1UNku6VtxOPXZMsYaci47IBfA4zS8Q8IJNx00aspL6/3qBOulcPtu
 BWb/zRjuvjttyt+05hugR9LU0c/RgPxp1BCIzcJU2b+3/UjuUC2smT69uWlSqPL7
 ku5MYIoaoTX0UW4mPyhvdW6EwOPi0dfJpsLPiaOaz8twX4LN6h5qrqMRpLP4BXqV
 rCo8PYYfjRwpiKYPN4tAQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm3; t=1674648191; x=1674734591; bh=vxkfReO71prrN
 Wdj/ls9FxWUEiwc8tsI0fkpO1vRHYI=; b=mX6CP2QGKCJkbigXCYDQZXaVHQfZj
 AzXuA6i81ltjT2vf/dnG1WMPG2kGki7ljhKcGdpiuGe4TUox5LbV6eisuZVj3xvn
 NenozAQQkdAnZWDgPnIHQSqw3DiRdP79XMIrUbKY8enIL2UANxXfEWlJwZYlepsE
 FZL1Xh6/TkWiAB1GnPK9ANHHJrn7TLOSR06xkou/cm3kuwiGxEG0VMcPuVWy0aO1
 gNlRcy9DIk9vptIStQ+5KhS35zhI5SfDzMkCHU7GhMcG2QhkxIwvH/wIFKL2jiWu
 m/D9jzeQuPGckLGzKezl4qSRVfOk3xzAZkPTC6d2vtEoNxiR5okZnQdFg==
X-ME-Sender: <xms:fxrRY1q35njtVs8Db6C3MyxCorr6LrXqV3Mr5q-8sxH8nrEI2aMcbg>
 <xme:fxrRY3oJ5R0GwjBYZb81L4PM-GF8YnGJVPOgmbwBOk7tE7C_DpGhaH1akiTTWG0FX
 0CacfnlXS76AyKOoOI>
X-ME-Received: <xmr:fxrRYyP94AAKgRBXfzqMcTA-pB3jacdSwHoO4XkcsNC_xdQihra8c9kV-LKWzYs_pLKRw4hezEN9ZtnBCg1-bB1MOmnuZsWAGP95qCNa3m9DSPtNV5TjBDE>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedruddvvddgfeehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:fxrRYw6mYH4yqGEnwOltXf2ON6gH_9uXRVqagITu7Ge03YY8of-hAA>
 <xmx:fxrRY04Mgxn1IGmFb5_iix5mkxadyUWBIN-evPOEnploAJMXSTdfog>
 <xmx:fxrRY4jtqBbi67Fy2V5JQPs848fU6FJUxYguoM__Mcut9X4Gm6mZ_w>
 <xmx:fxrRY0EVmqTXs6OcDQJGQwIfUe2j8LMIKw5K-pAXeXZ_wPwNJF5Z5Q>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 25 Jan 2023 07:03:09 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: stefanr@s5r6.in-berlin.de
Subject: [PATCH 03/11] firewire: cdev: implement new event to notify request
 subaction with time stamp
Date: Wed, 25 Jan 2023 21:02:53 +0900
Message-Id: <20230125120301.51585-4-o-takashi@sakamocchi.jp>
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
 Content preview:  In 1394 OHCI,
 the trailer quadlet of descriptor in Asynchronous
 Receive (AR) request context has timeStamp field, in which the 1394 OHCI
 controller record the isochronous cycle when the packet arrived [...] 
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
X-Headers-End: 1pKeUm-00FITD-Se
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

In 1394 OHCI, the trailer quadlet of descriptor in Asynchronous Receive
(AR) request context has timeStamp field, in which the 1394 OHCI
controller record the isochronous cycle when the packet arrived.

Current implementation of 1394 OHCI controller driver stores the value
of field to internal structure as time stamp, while the implementation
of FireWire character device doesn't have a field for the time stamp,
thus it is not available in user space. The time stamp is convenient to
some kind of application in which data from several sources are compared
in isochronous cycle unit.

This commit implement the new event, fw_cdev_event_request3, with an
additional field, tstamp.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-cdev.c | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index 88c8b5fac5e5..5a9446d30447 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -178,6 +178,7 @@ struct inbound_transaction_event {
 	union {
 		struct fw_cdev_event_request request;
 		struct fw_cdev_event_request2 request2;
+		struct fw_cdev_event_request3 with_tstamp;
 	} req;
 };
 
@@ -709,7 +710,7 @@ static void handle_request(struct fw_card *card, struct fw_request *request,
 		req->handle	= r->resource.handle;
 		req->closure	= handler->closure;
 		event_size0	= sizeof(*req);
-	} else {
+	} else if (handler->client->version < FW_CDEV_VERSION_EVENT_ASYNC_TSTAMP) {
 		struct fw_cdev_event_request2 *req = &e->req.request2;
 
 		req->type	= FW_CDEV_EVENT_REQUEST2;
@@ -723,6 +724,21 @@ static void handle_request(struct fw_card *card, struct fw_request *request,
 		req->handle	= r->resource.handle;
 		req->closure	= handler->closure;
 		event_size0	= sizeof(*req);
+	} else {
+		struct fw_cdev_event_request3 *req = &e->req.with_tstamp;
+
+		req->type	= FW_CDEV_EVENT_REQUEST3;
+		req->tcode	= tcode;
+		req->offset	= offset;
+		req->source_node_id = source;
+		req->destination_node_id = destination;
+		req->card	= card->index;
+		req->generation	= generation;
+		req->length	= length;
+		req->handle	= r->resource.handle;
+		req->closure	= handler->closure;
+		req->tstamp	= fw_request_get_timestamp(request);
+		event_size0	= sizeof(*req);
 	}
 
 	queue_event(handler->client, &e->event,
-- 
2.37.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
