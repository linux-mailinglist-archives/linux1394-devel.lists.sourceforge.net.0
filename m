Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D4B3C466261
	for <lists+linux1394-devel@lfdr.de>; Thu,  2 Dec 2021 12:35:37 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1mskN3-0002si-Rh; Thu, 02 Dec 2021 11:35:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1mskN2-0002sT-2R
 for linux1394-devel@lists.sourceforge.net; Thu, 02 Dec 2021 11:35:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HYA2baR9g9uxh0vIU8ekgamWzAVAwChaw229O58ZZJg=; b=DZY9sGLeqS8GZlDqmoafbUBo0G
 7tlGYvWskpQrWoouHEopDbLiaIl1KTBk5YAErJSBb7hBAufmZOuAb6Qsuq/RNZLo8yO2xnzPZa3fQ
 a/YDvLyrXmuSQ/CWZtfYKm6L34zclZvUVOhRrtpZ7exLrHYutP+mSiHTwKeJLTq0Jhyg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HYA2baR9g9uxh0vIU8ekgamWzAVAwChaw229O58ZZJg=; b=abRxs3vg/0sWm4YaaqsP4sP1qI
 F9QEUbHdfv51kgLc4nhvyCurij5bFgO9JRTivS62jxO0uFh+hgyXeTYa9AKI9WUEkIwhOUvEwjvPa
 PwiFuHPdqytpSH+CxMdajsWvfSDkDJx/cEl0HoV5exWN4se/s/Ey38X+nXOlaogHwirQ=;
Received: from wout4-smtp.messagingengine.com ([64.147.123.20])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mskN0-001QRt-Vx
 for linux1394-devel@lists.sourceforge.net; Thu, 02 Dec 2021 11:35:24 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.west.internal (Postfix) with ESMTP id 47DE23201EF4;
 Thu,  2 Dec 2021 06:35:14 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Thu, 02 Dec 2021 06:35:15 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=HYA2baR9g9uxh
 0vIU8ekgamWzAVAwChaw229O58ZZJg=; b=LB0DMAE8Y2qCVUl1aYoFZx0OO1Oy6
 BE6b6+iQgdTXh9sN7tsC+6tEhB7SDtMI3gIb3xgHms+qYrwzihtbKen6PtQjE1tc
 zSSUi5vgh34vpY521sxfh0FL0SdUCs4/82sJUZNLWEiGfeGhzHe7plE/YkNhrzB6
 NCWFXG7lT2c1LEf3unCoD7+tq/z03/kzUymvje1x0SyF43raJZ8gRlpWbPM9n2ta
 lIFgl3PdsA5OmvYpxr0R0FGea/bGOruWHuHuLD37/OUybBlD6gfJUVh7PIJFGEU/
 yXV9wubzM/XgzVxvsrg12awKy5Wom/RmciGMh+HmYpZtBTyXdg/XA55Hw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=HYA2baR9g9uxh0vIU8ekgamWzAVAwChaw229O58ZZJg=; b=M/xSxlx7
 63mVkOuO6JR7TLx7WnHEXdy+Tddn0t8rCibgySMiEQR5Mn5B+dqBMpY43XW9CT8F
 OKMzUoHXdiZe4b1UtiJGolyyuTPw634wEg6a5ZO981eI9RSVMPCrYr53SyNHh0hu
 43p4GawKvXM0NUcmOg2F/6bmmRK+Vg1JTkAKIo5DiAr542N/D68LSFwUSVVpxWox
 Rzjz4cZuKKGq7YrUEJtoss0YZ7xUKJKSuD8mcorRWOB8GvJi/tjYY4ETAoPTENnr
 Ka5dKUgg3zfsL3xB5dba9q8XPlNP1W4iKds7a7WG20J0kesxXaJg5efJMWJN3a/R
 PHK5HkPNSleWig==
X-ME-Sender: <xms:ca-oYaQoH-M39LTDHE3qjbnNTLOP5Ux-54AFK72KmIEyELPtVjfnFg>
 <xme:ca-oYfzB7amdRsIFp6yBdg5QKlwn7Ramnu2TtFieDWKZ2j8rDO33gifsaZ6WLcZyr
 MP7j1dGHjNhM7Q7Gvw>
X-ME-Received: <xmr:ca-oYX1YNEqced0s9pHETmyw7T2-wo4uPmA_Il_mKPRCk3Tvec7m-u35uy6S8Nber4kQ89i21lWBKpUChFd5WHS6P0M0TUoypzje2Cm3RC2eDVbryCJk>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvuddrieehgddvlecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeevfefffeekte
 fgveegfeelheffhfeujedtjeevtefhkeevkedtjeejvddtjefhjeenucevlhhushhtvghr
 ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrg
 hkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:ca-oYWBn6d2KdwS7HCxY4y4hyWOoxc3MIS5Jl2-0YUJfe7NGl-Qw-g>
 <xmx:ca-oYTgIBfgRgdwSD2X3kQTc9CH07HTCW6mIpZJz-D2HJvkGEdv2bQ>
 <xmx:ca-oYSpsDcT_YJNQSDuPatJmgw8avuzaH89Ylp7pqa4JtVJw3kSioQ>
 <xmx:ca-oYTfvREdZGq9ULktFoqBIqNg5cGFSUHDZRdKAFk3123vzYsr6qw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 2 Dec 2021 06:35:12 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: stefanr@s5r6.in-berlin.de
Subject: [PATCH 3/3] firewire: add kernel API to access packet structure in
 request structure for AR context
Date: Thu,  2 Dec 2021 20:34:57 +0900
Message-Id: <20211202113457.24011-4-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211202113457.24011-1-o-takashi@sakamocchi.jp>
References: <20211202113457.24011-1-o-takashi@sakamocchi.jp>
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
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.20 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [64.147.123.20 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1mskN0-001QRt-Vx
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
 linux-kernel@vger.kernel.org, marcan@marcan.st
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

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
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
