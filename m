Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 97B217109DF
	for <lists+linux1394-devel@lfdr.de>; Thu, 25 May 2023 12:17:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1q281a-0006Rd-LE;
	Thu, 25 May 2023 10:16:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1q281Y-0006RD-W9
 for linux1394-devel@lists.sourceforge.net;
 Thu, 25 May 2023 10:16:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cS/28RDTzVsKafSd+dry2URWS1xJwH24SgaemkBRLZQ=; b=LhxJMGn2DUEBS0CM4khoOjRos9
 wgHyI6n1M8MlhHXEZstgvH4IyxNbI8PezwTLdzrksM5DHNLotFE7BXkKxeqZ5yluXROZ5eW4QuHNs
 cZRrOeY4RVZ50WENVfSsWKPZchfqa6bup0yHAcIA8p27ddlyDHsx7WO3S87GvtE1L1ME=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cS/28RDTzVsKafSd+dry2URWS1xJwH24SgaemkBRLZQ=; b=KZCyVZvw0OxC6Q1QQOB8zhLq4h
 J1xcOd3w3AiNsqgho1CmWunTLR9sTpYb+qzINxKElqmqdD7QEUKu3CmJg0ucy5h4Mzl9PliA2zqBD
 mEKCB4Ff1NLziZzUWI2vaN97X/HVXIBapMDguP3KuYH4bnwM/WmdPiOihYVcFk1ug4I8=;
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q281Y-0029kP-9g for linux1394-devel@lists.sourceforge.net;
 Thu, 25 May 2023 10:16:49 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id DD4055C028E;
 Thu, 25 May 2023 06:16:40 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Thu, 25 May 2023 06:16:40 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm1; t=1685009800; x=
 1685096200; bh=cS/28RDTzVsKafSd+dry2URWS1xJwH24SgaemkBRLZQ=; b=W
 Y/VGEky1g2eY/d87Y3hj0P5BfYx978NPFTlXWJ+FVQxgiaZTV9yO47scI647nNpK
 lZKBV8tOZdqqVYtsP38CKZftUQuPVCDzyhKqEFzcLRY53aYk0hl0OH3+DIQv8PKE
 4s5/EcvIempHZFn+RPDjRP8u5Aj5QBvdlJdZ3ZJXVOcSHeX9sn2+kxQrsZvWqamW
 7K3rTczfZYIycXJYfZiIuqEvXU4vhLq7B+wUsSzOFG8+SgHQy3/V6NOJCESfYLGN
 zTizGBNIxGEAdMC4EU6Wy8GQzDyFcF+3XcPV6loSOSyc+G+HsZFw9T1/NE8rp7kd
 osCPQpxvSrZnNrOrirkaw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1685009800; x=
 1685096200; bh=cS/28RDTzVsKafSd+dry2URWS1xJwH24SgaemkBRLZQ=; b=W
 RRPIa3OUnXn1/jj8y2JlGZ5X2RRZvY0yB8vElewa321tTsGy1ADLcINxbILsq8RH
 TS2s24e9/QeXCktAQ/KJad1hdnY0k36ECN0CbFTKdNM1fAwJT/snwdXttdAONyzn
 IyiNp2o6ZmHyeD5AcqfcUOjRFX6OhyVeGiTfm0MaBDdgE0/nvw9UexyOZtNFEBqq
 SVeDB+Wp32qWzvSOzVHGLiHBNQ5oNoYslyd79Nh0xUbh29nz36mMYGOmC+6D60Ha
 FtWSawXWwGg+LTw9YVU2iOxTDYdlovUHCnXGSnRmxoTeXWqCHRXX7i/IkC3sQNcK
 iNCs6g+5WqS97OoLtrkeQ==
X-ME-Sender: <xms:iDVvZMPTjFRUVmi0xM2V90J0ao-mD0gw1kU9gwnC_h3qi3WhrXBI-w>
 <xme:iDVvZC948R_K6B87I7in_Wb2jOALHEFszBV3Rkrd66KuLPMKBc2I0KJErmu2Di2bT
 vjWFRlQS80JZzH3kDs>
X-ME-Received: <xmr:iDVvZDS-fhCOKWZrrARBe9uBPxwh4RRPZvxljns58jtktZw18ftRbLb6xt_QUGSLvYLE2o2w3ia680_KNhBhspkeWfX0fEdgX7odJXZDe4UM9g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfeejjedgvdehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:iDVvZEsgrZmKxT5dkX6Kjj5POQDs1OJ8YAcdbPMQj4sTQptey6BhVw>
 <xmx:iDVvZEfmIQXhsZSt0BltUhGE0l15QIExb9GUpC3UdHh5Fwit9bJhbg>
 <xmx:iDVvZI1yrQBZvowzuyMBCItOfMIWoHMsZnZffyaGnTPuG7VF6gzvag>
 <xmx:iDVvZAHKjbFSbUQQ0C4ssHH0xJjYmAGnXwKEPN1d9mL2UvF8nMiJbg>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 25 May 2023 06:16:39 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 08/12] firewire: cdev: add new event to notify response
 subaction with time stamp
Date: Thu, 25 May 2023 19:16:21 +0900
Message-Id: <20230525101625.888906-9-o-takashi@sakamocchi.jp>
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
 Content preview: This commit adds new event to notify event of response
 subaction
 with time stamp field. Current compiler implementation of System V ABI selects
 one of structure members which has the maximum alignment size in the structure
 to decide the size of structure. In the case of fw_cdev_event_req [...] 
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
X-Headers-End: 1q281Y-0029kP-9g
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
Cc: kunit-dev@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

This commit adds new event to notify event of response subaction with
time stamp field.

Current compiler implementation of System V ABI selects one of structure
members which has the maximum alignment size in the structure to decide
the size of structure. In the case of fw_cdev_event_request3 structure,
it is closure member which has 8 byte storage. The size of alignment for
the type of 8 byte storage differs depending on architectures; 4 byte for
i386 architecture and 8 byte for the others including x32 architecture.
It is inconvenient to device driver developer to use structure layout
which varies between architectures since the developer takes care of ioctl
compat layer. This commit adds 32 bit member for padding to keep the
size of structure as multiples of 8.

Cc: kunit-dev@googlegroups.com
Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/uapi-test.c       | 15 ++++++++
 include/uapi/linux/firewire-cdev.h | 59 +++++++++++++++++++++++++-----
 2 files changed, 64 insertions(+), 10 deletions(-)

diff --git a/drivers/firewire/uapi-test.c b/drivers/firewire/uapi-test.c
index c7c713babaa0..c342ba474ee6 100644
--- a/drivers/firewire/uapi-test.c
+++ b/drivers/firewire/uapi-test.c
@@ -45,9 +45,24 @@ static void structure_layout_event_request3(struct kunit *test)
 	KUNIT_EXPECT_EQ(test, 56, offsetof(struct fw_cdev_event_request3, data));
 }
 
+// Added at v6.4.
+static void structure_layout_event_response2(struct kunit *test)
+{
+	KUNIT_EXPECT_EQ(test, 32, sizeof(struct fw_cdev_event_response2));
+
+	KUNIT_EXPECT_EQ(test, 0, offsetof(struct fw_cdev_event_response2, closure));
+	KUNIT_EXPECT_EQ(test, 8, offsetof(struct fw_cdev_event_response2, type));
+	KUNIT_EXPECT_EQ(test, 12, offsetof(struct fw_cdev_event_response2, rcode));
+	KUNIT_EXPECT_EQ(test, 16, offsetof(struct fw_cdev_event_response2, length));
+	KUNIT_EXPECT_EQ(test, 20, offsetof(struct fw_cdev_event_response2, request_tstamp));
+	KUNIT_EXPECT_EQ(test, 24, offsetof(struct fw_cdev_event_response2, response_tstamp));
+	KUNIT_EXPECT_EQ(test, 32, offsetof(struct fw_cdev_event_response2, data));
+}
+
 static struct kunit_case structure_layout_test_cases[] = {
 	KUNIT_CASE(structure_layout_event_response),
 	KUNIT_CASE(structure_layout_event_request3),
+	KUNIT_CASE(structure_layout_event_response2),
 	{}
 };
 
diff --git a/include/uapi/linux/firewire-cdev.h b/include/uapi/linux/firewire-cdev.h
index cc9b03244a62..ae8ccf7d7d2a 100644
--- a/include/uapi/linux/firewire-cdev.h
+++ b/include/uapi/linux/firewire-cdev.h
@@ -48,6 +48,7 @@
 
 /* available since kernel version 6.3 */
 #define FW_CDEV_EVENT_REQUEST3				0x0a
+#define FW_CDEV_EVENT_RESPONSE2				0x0b
 
 /**
  * struct fw_cdev_event_common - Common part of all fw_cdev_event_* types
@@ -106,6 +107,29 @@ struct fw_cdev_event_bus_reset {
  * @length:	Data length, i.e. the response's payload size in bytes
  * @data:	Payload data, if any
  *
+ * This event is sent instead of &fw_cdev_event_response if the kernel or the client implements
+ * ABI version <= 5. It has the lack of time stamp field comparing to &fw_cdev_event_response2.
+ */
+struct fw_cdev_event_response {
+	__u64 closure;
+	__u32 type;
+	__u32 rcode;
+	__u32 length;
+	__u32 data[];
+};
+
+/**
+ * struct fw_cdev_event_response2 - Sent when a response packet was received
+ * @closure:	See &fw_cdev_event_common; set by %FW_CDEV_IOC_SEND_REQUEST
+ *		or %FW_CDEV_IOC_SEND_BROADCAST_REQUEST
+ *		or %FW_CDEV_IOC_SEND_STREAM_PACKET ioctl
+ * @type:	See &fw_cdev_event_common; always %FW_CDEV_EVENT_RESPONSE
+ * @rcode:	Response code returned by the remote node
+ * @length:	Data length, i.e. the response's payload size in bytes
+ * @request_tstamp:	The time stamp of isochronous cycle at which the request was sent.
+ * @request_tstamp:	The time stamp of isochronous cycle at which the response was sent.
+ * @data:	Payload data, if any
+ *
  * This event is sent when the stack receives a response to an outgoing request
  * sent by %FW_CDEV_IOC_SEND_REQUEST ioctl.  The payload data for responses
  * carrying data (read and lock responses) follows immediately and can be
@@ -115,12 +139,25 @@ struct fw_cdev_event_bus_reset {
  * involve response packets.  This includes unified write transactions,
  * broadcast write transactions, and transmission of asynchronous stream
  * packets.  @rcode indicates success or failure of such transmissions.
+ *
+ * The value of @request_tstamp expresses the isochronous cycle at which the request was sent to
+ * initiate the transaction. The value of @response_tstamp expresses the isochronous cycle at which
+ * the response arrived to complete the transaction. Each value is unsigned 16 bit integer
+ * containing three low order bits of second field and all 13 bits of cycle field in format of
+ * CYCLE_TIMER register.
  */
-struct fw_cdev_event_response {
+struct fw_cdev_event_response2 {
 	__u64 closure;
 	__u32 type;
 	__u32 rcode;
 	__u32 length;
+	__u32 request_tstamp;
+	__u32 response_tstamp;
+	/*
+	 * Padding to keep the size of structure as multiples of 8 in various architectures since
+	 * 4 byte alignment is used for 8 byte of object type in System V ABI for i386 architecture.
+	 */
+	__u32 padding;
 	__u32 data[];
 };
 
@@ -421,6 +458,7 @@ struct fw_cdev_event_phy_packet {
  *				%FW_CDEV_EVENT_PHY_PACKET_RECEIVED
  *
  * @request3:		Valid if @common.type == %FW_CDEV_EVENT_REQUEST3
+ * @response2:		Valid if @common.type == %FW_CDEV_EVENT_RESPONSE2
  *
  * Convenience union for userspace use.  Events could be read(2) into an
  * appropriately aligned char buffer and then cast to this union for further
@@ -441,6 +479,7 @@ union fw_cdev_event {
 	struct fw_cdev_event_iso_resource	iso_resource;		/* added in 2.6.30 */
 	struct fw_cdev_event_phy_packet		phy_packet;		/* added in 2.6.36 */
 	struct fw_cdev_event_request3		request3;		/* added in 6.3 */
+	struct fw_cdev_event_response2		response2;		/* added in 6.3 */
 };
 
 /* available since kernel version 2.6.22 */
@@ -507,6 +546,7 @@ union fw_cdev_event {
  *               - added %FW_CDEV_IOC_FLUSH_ISO
  *  6  (6.4)     - added some event for subactions of asynchronous transaction with time stamp
  *                   - %FW_CDEV_EVENT_REQUEST3
+ *                   - %FW_CDEV_EVENT_RESPONSE2
  */
 
 /**
@@ -552,11 +592,11 @@ struct fw_cdev_get_info {
  * @data:	Userspace pointer to payload
  * @generation:	The bus generation where packet is valid
  *
- * Send a request to the device.  This ioctl implements all outgoing requests.
- * Both quadlet and block request specify the payload as a pointer to the data
- * in the @data field.  Once the transaction completes, the kernel writes an
- * &fw_cdev_event_response event back.  The @closure field is passed back to
- * user space in the response event.
+ * Send a request to the device.  This ioctl implements all outgoing requests. Both quadlet and
+ * block request specify the payload as a pointer to the data in the @data field. Once the
+ * transaction completes, the kernel writes either &fw_cdev_event_response event or
+ * &fw_cdev_event_response event back. The @closure field is passed back to user space in the
+ * response event.
  */
 struct fw_cdev_send_request {
 	__u32 tcode;
@@ -1039,10 +1079,9 @@ struct fw_cdev_allocate_iso_resource {
  * @generation:	The bus generation where packet is valid
  * @speed:	Speed to transmit at
  *
- * The %FW_CDEV_IOC_SEND_STREAM_PACKET ioctl sends an asynchronous stream packet
- * to every device which is listening to the specified channel.  The kernel
- * writes an &fw_cdev_event_response event which indicates success or failure of
- * the transmission.
+ * The %FW_CDEV_IOC_SEND_STREAM_PACKET ioctl sends an asynchronous stream packet to every device
+ * which is listening to the specified channel. The kernel writes either &fw_cdev_event_response
+ * event or &fw_cdev_event_response2 event which indicates success or failure of the transmission.
  */
 struct fw_cdev_send_stream_packet {
 	__u32 length;
-- 
2.39.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
