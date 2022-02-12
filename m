Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 628AA4B32A1
	for <lists+linux1394-devel@lfdr.de>; Sat, 12 Feb 2022 03:22:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1nIi2v-00050r-Ac; Sat, 12 Feb 2022 02:21:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1nIi2t-00050Y-AA
 for linux1394-devel@lists.sourceforge.net; Sat, 12 Feb 2022 02:21:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IERouoOAZT+69odSGZES8xOT3FLde6UiHl1oXWy+mRQ=; b=i799Rp8B4Sh04M7eRjOjM8cpfI
 CuilUUSbKqjJrFNaOYMGbOJiF1CVmQewwHKuztmvOYZpe+q3k6Ha0LJ5i3+Zv4RRHuCq76kryKyjn
 srkpPnKwqdOx3ToEXdyEPFQL0paEn5wSoSrbhYhVyQoJCsTSXXibDLeKu85+UroGUtGs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IERouoOAZT+69odSGZES8xOT3FLde6UiHl1oXWy+mRQ=; b=hCQst29IFi5VPjM/EPXoP6l3MG
 aUsXzXjchykl8aBuMhJRY/HJhuWor12votyp3FVqLIjnP2JpsIvVX36XrIdHWy5QX6B5k2tuAgiNq
 WJQ9No6GsPwG34RfmZmm1jKw7MqGK9VekZvQaPkxIkvXKn+jrQz7CNEOGwsziMBrub10=;
Received: from wout1-smtp.messagingengine.com ([64.147.123.24])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nIi2r-00GEfc-7v
 for linux1394-devel@lists.sourceforge.net; Sat, 12 Feb 2022 02:21:53 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.west.internal (Postfix) with ESMTP id 6B5353201DBF;
 Fri, 11 Feb 2022 21:21:47 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Fri, 11 Feb 2022 21:21:47 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm3; bh=IERouoOAZT+69o
 dSGZES8xOT3FLde6UiHl1oXWy+mRQ=; b=eyyJmmKSjgIH15wxeePanwMPcsB9JE
 UyYy6JS7gpri7o+4dwyS+E+P8itcmD7DF2lIDg3pFIT/JGm4Wi0Thagxsy+QJL9y
 2EAtCTO27wnBpHby3Wa3OAP63KKhuR3K/UcyqJ90YKx2+/9xg1itN+jUK4VGQ4Gk
 zGD5EGxhyWALNrrYYME18Hp9IgyC29JmG4ZT4qGw5Q+B4K3DIe5P8x1U8lZfBTGy
 7aVPuPuctkYusTLBRhwdS+qMN8jIVRA/RUAcNkjCK1zWpIitV7YrSvD1GHDlo/XV
 jeEmvW9HdH3ecG2+QbBTUh52rorLvCThukwb99v0wFWc3A+OuW7LciOg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:sender:subject:subject:to:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=IERouo
 OAZT+69odSGZES8xOT3FLde6UiHl1oXWy+mRQ=; b=IMWpl2DjkcwCiIiQDfj/8J
 sq9kUaYeSy/4hHZjR/Fsu3DlrIAG+NteM3IzQRzR6QQIaGV0wyL3wDnCuTNY51za
 Y6XL8BPHPu0fBOwT0DScH3+t6kLIpI4IewtBBdinetxIO0KHRML5imQmEXJUPrR4
 H4PULL4vaCE3ptJvsw/4oNmeHvYl1PyR4EvzTn/sEFPsONtkZVaPezTneIl5rxfZ
 Hn+V9E4557T6dmM8tCmzRFYcoM1NZk8R0pnW7xFPd7TqigxX6NQnnHRo2RJ14YQg
 hPBkbDoef3CaLsHhZZ1nBFLYhAYGOJWNCk82XBIAno6ScqStFWDM6lbkTczX7BRQ
 ==
X-ME-Sender: <xms:uhkHYlYE9FpdbJgbz7cJlFCRYn7Z_F7FyoDx7uRtmnygPHs3dw9HEw>
 <xme:uhkHYsY4CdH2hhft8dFU1hLhEGopzqBCS2o2rarznnj0VRkwg6l2DWfLp-k50bHoQ
 Z5ovOdN8OCO8TjkEPo>
X-ME-Received: <xmr:uhkHYn9o10sjS-2UXXDCOrhdk4Cilsn5ZgPqu_7I3q2RskUjNShZr5UHjdQstG0CagpRLCYVgXQ3IFl1ILlM-WVTrugRo2vvyvibW9ExxYutxuFGPhGt>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrieeggdeghecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeevfefffeekte
 fgveegfeelheffhfeujedtjeevtefhkeevkedtjeejvddtjefhjeenucevlhhushhtvghr
 ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrg
 hkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:uhkHYjoEkY4C-CQ-95t-rR8yEIIHCimAIpA5Us2gh64J39KYR8MAVQ>
 <xmx:uhkHYgqtRmvuTA1gY006wcF3DhVY4ec2liSDSbU0lxw-9LG-XIzvbQ>
 <xmx:uhkHYpRFrd7t1kP_Do4rxf-ONSaGCaOyy2FjHxtzrWmR9Q--8HIA5Q>
 <xmx:uxkHYrVJmTKaAi7G0XyEWBen6dCaAXDSf9J8D1qZPCLbcy5A1oHArw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 11 Feb 2022 21:21:45 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: stefanr@s5r6.in-berlin.de
Subject: [PATCH v2 3/3] firewire: add kernel API to access packet structure in
 request structure for AR context
Date: Sat, 12 Feb 2022 11:21:31 +0900
Message-Id: <20220212022131.199855-4-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220212022131.199855-1-o-takashi@sakamocchi.jp>
References: <20220212022131.199855-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In 1394 OHCI specification,
 descriptor of Asynchronous Receive
 DMA context has timeStamp field in its trailer quadlet. The field is written
 by the host controller for the time to receive asynchronous [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.24 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1nIi2r-00GEfc-7v
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
Cc: alsa-devel@alsa-project.org, linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

In 1394 OHCI specification, descriptor of Asynchronous Receive DMA context
has timeStamp field in its trailer quadlet. The field is written by
the host controller for the time to receive asynchronous request
subaction in isochronous cycle time.

In Linux FireWire subsystem, the value of field is stored to fw_packet
structure and copied to fw_request structure as the part. The fw_request
structure is hidden from unit driver and passed as opaque pointer when
calling registered handler. It's inconvenient to the unit driver which
needs timestamp of packet.

This commit adds kernel API to pick up timestamp from opaque pointer to
fw_request structure.
---
 drivers/firewire/core-transaction.c | 18 ++++++++++++++++++
 include/linux/firewire.h            |  1 +
 2 files changed, 19 insertions(+)

diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
index ac487c96bb71..e12a0a4c33f7 100644
--- a/drivers/firewire/core-transaction.c
+++ b/drivers/firewire/core-transaction.c
@@ -619,6 +619,7 @@ struct fw_request {
 	struct fw_packet response;
 	u32 request_header[4];
 	int ack;
+	u32 timestamp;
 	u32 length;
 	u32 data[];
 };
@@ -788,6 +789,7 @@ static struct fw_request *allocate_request(struct fw_card *card,
 	request->response.ack = 0;
 	request->response.callback = free_response_callback;
 	request->ack = p->ack;
+	request->timestamp = p->timestamp;
 	request->length = length;
 	if (data)
 		memcpy(request->data, data, length);
@@ -832,6 +834,22 @@ int fw_get_request_speed(struct fw_request *request)
 }
 EXPORT_SYMBOL(fw_get_request_speed);
 
+/**
+ * fw_request_get_timestamp: Get timestamp of the request.
+ * @request: The opaque pointer to request structure.
+ *
+ * Get timestamp when 1394 OHCI controller receives the asynchronous request subaction. The
+ * timestamp consists of the low order 3 bits of second field and the full 13 bits of count
+ * field of isochronous cycle time register.
+ *
+ * Returns: timestamp of the request.
+ */
+u32 fw_request_get_timestamp(const struct fw_request *request)
+{
+	return request->timestamp;
+}
+EXPORT_SYMBOL_GPL(fw_request_get_timestamp);
+
 static void handle_exclusive_region_request(struct fw_card *card,
 					    struct fw_packet *p,
 					    struct fw_request *request,
diff --git a/include/linux/firewire.h b/include/linux/firewire.h
index 2f467c52bdec..980019053e54 100644
--- a/include/linux/firewire.h
+++ b/include/linux/firewire.h
@@ -354,6 +354,7 @@ void fw_core_remove_address_handler(struct fw_address_handler *handler);
 void fw_send_response(struct fw_card *card,
 		      struct fw_request *request, int rcode);
 int fw_get_request_speed(struct fw_request *request);
+u32 fw_request_get_timestamp(const struct fw_request *request);
 void fw_send_request(struct fw_card *card, struct fw_transaction *t,
 		     int tcode, int destination_id, int generation, int speed,
 		     unsigned long long offset, void *payload, size_t length,
-- 
2.32.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
