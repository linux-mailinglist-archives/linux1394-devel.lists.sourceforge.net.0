Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 37AEC7109D7
	for <lists+linux1394-devel@lfdr.de>; Thu, 25 May 2023 12:16:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1q281V-0005qq-ET;
	Thu, 25 May 2023 10:16:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1q281T-0005qa-Sj
 for linux1394-devel@lists.sourceforge.net;
 Thu, 25 May 2023 10:16:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=r495ZagNUl310AfgMMzJgvZvJuQiL4XuaB6fjhkP/AM=; b=gqYdcSoZ8xHHCpGrntME1Xx7Y3
 UywlEvAM/CrwqaipwX59x1gKuedTJaEL0TXVuPF1jA4vQdcCMJ1XEn5FzCE/eCpauQMtUT1hvKiqt
 qwlQQbyFezxgydnAbj5Gp1RQnXpi3j42fsui5IQ1YRpp+vMboA44DZ3AJjkaJ/CCpDSI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=r495ZagNUl310AfgMMzJgvZvJuQiL4XuaB6fjhkP/AM=; b=Qese00hHGRK9CzkJfWcXewB/gN
 lCnsM+WnUGBdce3O4aerSQZO4xfrQomG5N3yOha9E5QksAqD79EmhL+7dCy8Q4CWGzEB3AkJDTZnc
 B2b8zuVMWdZHJnFh4YCBxQTNIWm1K7gahJioQFN5h94Vn41UUQH517rWID/1vASbenC4=;
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q281P-0004VE-Or for linux1394-devel@lists.sourceforge.net;
 Thu, 25 May 2023 10:16:43 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailout.nyi.internal (Postfix) with ESMTP id 3C0525C0073;
 Thu, 25 May 2023 06:16:34 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Thu, 25 May 2023 06:16:34 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm1; t=1685009794; x=
 1685096194; bh=r495ZagNUl310AfgMMzJgvZvJuQiL4XuaB6fjhkP/AM=; b=i
 qgF/nnYKwfppxuAEfHdL6pIOQPgJlZpK+d6Va+j4q1EagO9KBToJpvoVcYlwxFMI
 JJVV0kx/WJun0FOD6uQKFTTncaIadoFdtsiW63NLrYOd5eTdBPmLxCCOrCwP42Ha
 KN+XfWstVXN+DNErclkBGqV49reGUsvfynww4gq9Zymcc/wNKYOcG5Ux+bZlQjjV
 c9822Bn5bE/7AYBDvwjj7Igl0J7qKD/tw2gI8Dd+Y8ivtEm2pRWd+1imK8Iprwv4
 rzyECmoTBqRuBtNpqHFf8RTAqwcA3I/zRXxBpKp+nI+KHFNrhcXIS+oFepXICDKV
 mdnNUoO2U/PlWf5hujgTg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1685009794; x=
 1685096194; bh=r495ZagNUl310AfgMMzJgvZvJuQiL4XuaB6fjhkP/AM=; b=w
 EFYEc6uOvXpXWYdYkuJ9i6bxI3y5bj/DI1btRroDa/F/gEYG0vSrFZzOdt1vgcVy
 Uh6khPeQ/Qnzwx0orXFDqB5nkRWm96xmOD4QcotHhayVuIeTNjnlfLmn/S/Abyca
 7PDFd4vLXiqvdJdvHiVdATINP0hc5/l4sX7sIYdr0KejmzrAYLts46xtcwbvqoLj
 q7Nuf0/XyPpKfRUyXi+sI+cvHKKR3jqJdgBjDkJ6xfeRbflOSpmAvDPl0vfCA9wE
 ezw0F1zFHZ1YnomV/MKXDrZe7TgiGGI7XXXSL+fZSm+spnWXY9ePfb9XMAyFJN32
 FhfoRnOJ7M2vi/9KH9q6w==
X-ME-Sender: <xms:gjVvZG2u9ZNsjdQtRMxuiNo7INNeWABZmdfgO00dCk9iK1n8CTMYag>
 <xme:gjVvZJFOw1S5DbeEsOZHqGtcom_DV_rk2B_z_YGI-VX1lJP8rz4NBNaxL7x3y-OUP
 kD8J8RQ9J2lEX5mZVo>
X-ME-Received: <xmr:gjVvZO4Ry7LsUJGrm14_XiMT5G6CgUMJfYfLthVqTB_qvtE1E7rkaTJ1KqXgXiJtP77qY8XN78FrnLDruwWRsBQGoO9Byx0c0iEMZ4U2mkx83w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfeejjedgvdehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:gjVvZH3i3cIyshvqqtDDkb9tgooN7oS7Yx0CfWCnh74bBjxWWQFIPA>
 <xmx:gjVvZJGBdb-gX1Z3ccHpl6C04hCyCDRSY0ZnXi9_CiNBJWrvnzX5Ww>
 <xmx:gjVvZA8NA8ghVbX36uPU1aU0NV0z3Mzs6rxNx1IumexrxGkzi5Kjow>
 <xmx:gjVvZHPgrWg9o--bddCTCCrp0I3WbNhMh0XyE1N8TIS2u58ZWUNfFg>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 25 May 2023 06:16:32 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 03/12] firewire: cdev: add new event to notify request
 subaction with time stamp
Date: Thu, 25 May 2023 19:16:16 +0900
Message-Id: <20230525101625.888906-4-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230525101625.888906-1-o-takashi@sakamocchi.jp>
References: <20230525101625.888906-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This commit adds new event to notify event of request
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
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1q281P-0004VE-Or
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

This commit adds new event to notify event of request subaction with
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
 drivers/firewire/uapi-test.c       | 20 +++++++++++
 include/uapi/linux/firewire-cdev.h | 53 ++++++++++++++++++++++++++++--
 2 files changed, 71 insertions(+), 2 deletions(-)

diff --git a/drivers/firewire/uapi-test.c b/drivers/firewire/uapi-test.c
index 4dc633b91336..c7c713babaa0 100644
--- a/drivers/firewire/uapi-test.c
+++ b/drivers/firewire/uapi-test.c
@@ -26,8 +26,28 @@ static void structure_layout_event_response(struct kunit *test)
 	KUNIT_EXPECT_EQ(test, 20, offsetof(struct fw_cdev_event_response, data));
 }
 
+// Added at v6.4.
+static void structure_layout_event_request3(struct kunit *test)
+{
+	KUNIT_EXPECT_EQ(test, 56, sizeof(struct fw_cdev_event_request3));
+
+	KUNIT_EXPECT_EQ(test, 0, offsetof(struct fw_cdev_event_request3, closure));
+	KUNIT_EXPECT_EQ(test, 8, offsetof(struct fw_cdev_event_request3, type));
+	KUNIT_EXPECT_EQ(test, 12, offsetof(struct fw_cdev_event_request3, tcode));
+	KUNIT_EXPECT_EQ(test, 16, offsetof(struct fw_cdev_event_request3, offset));
+	KUNIT_EXPECT_EQ(test, 24, offsetof(struct fw_cdev_event_request3, source_node_id));
+	KUNIT_EXPECT_EQ(test, 28, offsetof(struct fw_cdev_event_request3, destination_node_id));
+	KUNIT_EXPECT_EQ(test, 32, offsetof(struct fw_cdev_event_request3, card));
+	KUNIT_EXPECT_EQ(test, 36, offsetof(struct fw_cdev_event_request3, generation));
+	KUNIT_EXPECT_EQ(test, 40, offsetof(struct fw_cdev_event_request3, handle));
+	KUNIT_EXPECT_EQ(test, 44, offsetof(struct fw_cdev_event_request3, length));
+	KUNIT_EXPECT_EQ(test, 48, offsetof(struct fw_cdev_event_request3, tstamp));
+	KUNIT_EXPECT_EQ(test, 56, offsetof(struct fw_cdev_event_request3, data));
+}
+
 static struct kunit_case structure_layout_test_cases[] = {
 	KUNIT_CASE(structure_layout_event_response),
+	KUNIT_CASE(structure_layout_event_request3),
 	{}
 };
 
diff --git a/include/uapi/linux/firewire-cdev.h b/include/uapi/linux/firewire-cdev.h
index e3d463b2c288..cc9b03244a62 100644
--- a/include/uapi/linux/firewire-cdev.h
+++ b/include/uapi/linux/firewire-cdev.h
@@ -46,6 +46,9 @@
 #define FW_CDEV_EVENT_PHY_PACKET_RECEIVED		0x08
 #define FW_CDEV_EVENT_ISO_INTERRUPT_MULTICHANNEL	0x09
 
+/* available since kernel version 6.3 */
+#define FW_CDEV_EVENT_REQUEST3				0x0a
+
 /**
  * struct fw_cdev_event_common - Common part of all fw_cdev_event_* types
  * @closure:	For arbitrary use by userspace
@@ -159,6 +162,38 @@ struct fw_cdev_event_request {
  * @length:	Data length, i.e. the request's payload size in bytes
  * @data:	Incoming data, if any
  *
+ * This event is sent instead of &fw_cdev_event_request3 if the kernel or the client implements
+ * ABI version <= 5. It has the lack of time stamp field comparing to &fw_cdev_event_request3.
+ */
+struct fw_cdev_event_request2 {
+	__u64 closure;
+	__u32 type;
+	__u32 tcode;
+	__u64 offset;
+	__u32 source_node_id;
+	__u32 destination_node_id;
+	__u32 card;
+	__u32 generation;
+	__u32 handle;
+	__u32 length;
+	__u32 data[];
+};
+
+/**
+ * struct fw_cdev_event_request3 - Sent on incoming request to an address region
+ * @closure:	See &fw_cdev_event_common; set by %FW_CDEV_IOC_ALLOCATE ioctl
+ * @type:	See &fw_cdev_event_common; always %FW_CDEV_EVENT_REQUEST2
+ * @tcode:	Transaction code of the incoming request
+ * @offset:	The offset into the 48-bit per-node address space
+ * @source_node_id: Sender node ID
+ * @destination_node_id: Destination node ID
+ * @card:	The index of the card from which the request came
+ * @generation:	Bus generation in which the request is valid
+ * @handle:	Reference to the kernel-side pending request
+ * @length:	Data length, i.e. the request's payload size in bytes
+ * @tstamp:	The time stamp of isochronous cycle at which the request arrived.
+ * @data:	Incoming data, if any
+ *
  * This event is sent when the stack receives an incoming request to an address
  * region registered using the %FW_CDEV_IOC_ALLOCATE ioctl.  The request is
  * guaranteed to be completely contained in the specified region.  Userspace is
@@ -191,10 +226,14 @@ struct fw_cdev_event_request {
  * sent.
  *
  * If the client subsequently needs to initiate requests to the sender node of
- * an &fw_cdev_event_request2, it needs to use a device file with matching
+ * an &fw_cdev_event_request3, it needs to use a device file with matching
  * card index, node ID, and generation for outbound requests.
+ *
+ * @tstamp is isochronous cycle at which the request arrived. It is 16 bit integer value and the
+ * higher 3 bits expresses three low order bits of second field in the format of CYCLE_TIME
+ * register and the rest 13 bits expresses cycle field.
  */
-struct fw_cdev_event_request2 {
+struct fw_cdev_event_request3 {
 	__u64 closure;
 	__u32 type;
 	__u32 tcode;
@@ -205,6 +244,12 @@ struct fw_cdev_event_request2 {
 	__u32 generation;
 	__u32 handle;
 	__u32 length;
+	__u32 tstamp;
+	/*
+	 * Padding to keep the size of structure as multiples of 8 in various architectures since
+	 * 4 byte alignment is used for 8 byte of object type in System V ABI for i386 architecture.
+	 */
+	__u32 padding;
 	__u32 data[];
 };
 
@@ -375,6 +420,8 @@ struct fw_cdev_event_phy_packet {
  *				%FW_CDEV_EVENT_PHY_PACKET_SENT or
  *				%FW_CDEV_EVENT_PHY_PACKET_RECEIVED
  *
+ * @request3:		Valid if @common.type == %FW_CDEV_EVENT_REQUEST3
+ *
  * Convenience union for userspace use.  Events could be read(2) into an
  * appropriately aligned char buffer and then cast to this union for further
  * processing.  Note that for a request, response or iso_interrupt event,
@@ -393,6 +440,7 @@ union fw_cdev_event {
 	struct fw_cdev_event_iso_interrupt_mc	iso_interrupt_mc;	/* added in 2.6.36 */
 	struct fw_cdev_event_iso_resource	iso_resource;		/* added in 2.6.30 */
 	struct fw_cdev_event_phy_packet		phy_packet;		/* added in 2.6.36 */
+	struct fw_cdev_event_request3		request3;		/* added in 6.3 */
 };
 
 /* available since kernel version 2.6.22 */
@@ -458,6 +506,7 @@ union fw_cdev_event {
  *                 avoid dropping data
  *               - added %FW_CDEV_IOC_FLUSH_ISO
  *  6  (6.4)     - added some event for subactions of asynchronous transaction with time stamp
+ *                   - %FW_CDEV_EVENT_REQUEST3
  */
 
 /**
-- 
2.39.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
