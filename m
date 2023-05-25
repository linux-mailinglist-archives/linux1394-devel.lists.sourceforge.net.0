Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CB4047109D5
	for <lists+linux1394-devel@lfdr.de>; Thu, 25 May 2023 12:16:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1q281W-0004Iu-5W;
	Thu, 25 May 2023 10:16:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1q281T-0004IO-M9
 for linux1394-devel@lists.sourceforge.net;
 Thu, 25 May 2023 10:16:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vLnKaQC1H8MrzTAmo/K64YxxQOflNTjfEH6QTfOvlSY=; b=iE06ar9Nsj6fwGdQYRTlbTmrqJ
 Y+7WIpZ10jEE2gg9tQVT3/dWGU62yElUd6llc1xE341GtNqxR2R3vseMTPMzIkDtEqtxbqhurVpVN
 J+Rz0KCj5505MhIOvU3AmMvRr1HpGpEGw1JEGL8aIUkRm9mF0tYfVqkMXM0VhIUF27v4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vLnKaQC1H8MrzTAmo/K64YxxQOflNTjfEH6QTfOvlSY=; b=lhV1G7gPq7Ssk4suBRH1zAebGZ
 EtTv4nk1gQ1htNnPbRtTBWf3FltjKGTbfyDFWF+OE+YfVHhRcPOF2/wNKRjqYXQtl0XYV/sOlRg4w
 33xgaFvTmcaRixXATe/bvXq2gNkaUfc/eKMzuOWiGbUaVYv9M07lcDHAUvihmLNI6ab0=;
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q281S-0029jz-S1 for linux1394-devel@lists.sourceforge.net;
 Thu, 25 May 2023 10:16:44 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailout.nyi.internal (Postfix) with ESMTP id 64BEA5C01ED;
 Thu, 25 May 2023 06:16:35 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Thu, 25 May 2023 06:16:35 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:content-transfer-encoding:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm1; t=1685009795; x=
 1685096195; bh=vLnKaQC1H8MrzTAmo/K64YxxQOflNTjfEH6QTfOvlSY=; b=r
 Me9UGIKIYubaxAzCMoCJuLL34vKW9rQ3GKszPnxYTlYZ1j8KDBcMffbPNecKOSXH
 cRKo3FdfbF2rlgaibRS2mNdaq9LGhseuxU2Fb3PviqgSrOfacDVquY3Fj6dVyn1X
 +bspzWcyN5IZVHGR1c2MdoKVmWxMMixL9KRE01X45W7zRBxYGMcQy5nA/zq7ZSM0
 DP01O7xVbW+x2UMNy9XCrgernAQMZ2rcM4LusRFuWA5MGGbj02cQJ+TKE/rAlyy3
 gok6gx22YZh9T7suL7AoWCm/7ZKgQ8449UA203Av61ZP070y8c7rgNxPH66UrM1B
 EiQdMORotKg6Px9NyXaiQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:date:feedback-id:feedback-id:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:sender
 :subject:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1685009795; x=1685096195; bh=v
 LnKaQC1H8MrzTAmo/K64YxxQOflNTjfEH6QTfOvlSY=; b=lS+pVgxAzWARH2r9Y
 T+6JkJEWcgIJaDGl6EQORgrlc6Qet4reqm7KqQ7q8CifGvzj/l/01Zv5to9yXvu9
 vu0mT3Neil9g2/rJB3/rggUHOvVH0prXaxQDJ7/KLc5q/kJNjRys/KWAgw8DmZKq
 v3caOZUX70cjtwWiAVy//MeJvDzoRLv6g703KVhDJac10ReHOPz7OJLoKWKnbs29
 DYHQYiHGuFXCurMBuEQuSO7Mg74hlKBk+SW1U0JnNg+ZdFDFMM6WFveV96w1eZh8
 ASDku0nzuqR2KYHRTxnLHSxdYM56gAR0sHvSBDDPuPs9qL7a++t30YHnB+S4ksk1
 hfNDQ==
X-ME-Sender: <xms:gzVvZDiLeO2Ilb1O7r8A9qSvlafVXxrU7LqhejSEjiSqvKxKvVl9SQ>
 <xme:gzVvZACz_Zjig1fHlJu6qDyRn_2ftK6GS3rLU4GzEpBmr_2ByBVFXRKRAtlwUQ2JW
 _-DxRrcnriEoSFCRKU>
X-ME-Received: <xmr:gzVvZDGPNw7YWCFk8hMURW9-3qewoJB_S4mJK8ZT3-cYsLIFoD66ewSuW48eyFvMfOmZiNZdtGwa1GlqaO4Tf95JpQlyfSYXHbPTT4_rkekStg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfeejjedgvdehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepveefffefke
 etgfevgeefleehfffhueejtdejveethfekveektdejjedvtdejhfejnecuvehluhhsthgv
 rhfuihiivgepudenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:gzVvZARqXbz7l7agSqVFoc-EkbiJ_o_PYPbUZE1UlpqTwSSe9iZhmw>
 <xmx:gzVvZAyA-ZDTL87eH3RoKzgXXzXK2SEwMo3977AmgtbvYB7vnolXIg>
 <xmx:gzVvZG7pPNf-RknkjVMzIyYDawFALVsb_G9wYMsafYTgpBAEstayPA>
 <xmx:gzVvZGYBe6CXKYnWGH1Y_Q9qI1hmljMaZlwvmhKpCCKwtoqH9w9YrA>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 25 May 2023 06:16:34 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 04/12] firewire: cdev: implement new event to notify
 request subaction with time stamp
Date: Thu, 25 May 2023 19:16:17 +0900
Message-Id: <20230525101625.888906-5-o-takashi@sakamocchi.jp>
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
 Content preview:  In 1394 OHCI,
 the trailer quadlet of descriptor in Asynchronous
 Receive (AR) request context has timeStamp field, in which the 1394 OHCI
 controller record the isochronous cycle when the packet arrived [...] 
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
X-Headers-End: 1q281S-0029jz-S1
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
2.39.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
