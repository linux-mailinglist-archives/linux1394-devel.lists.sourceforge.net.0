Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 72A2771A0E9
	for <lists+linux1394-devel@lfdr.de>; Thu,  1 Jun 2023 16:50:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1q4jch-00077o-5o;
	Thu, 01 Jun 2023 14:49:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1q4jcc-00077f-6a
 for linux1394-devel@lists.sourceforge.net;
 Thu, 01 Jun 2023 14:49:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CqtOqnMtfLTl17jHaTNX0NBBuC9GEzqPFAtZkKhT4aQ=; b=bqi7Ea6iLQNCyJLEajP57llQTj
 xfRSGFK6ZetHJR8Cf4ovorYOXDkiZzzkTkqUzk+mJD9pP+G5bMvp1C7d6sAb9JHX1iA8dNueMVcOv
 dRudoX6DoTik+jFUl0Nqv2pi0V/E8vUiZ+6NKFd0Zmmh1DBCUqAGbCj0zZ2NvUye0csM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=CqtOqnMtfLTl17jHaTNX0NBBuC9GEzqPFAtZkKhT4aQ=; b=G
 pXez9lBhAK8pV++QcMVPytvLySgmkDFne4BHKd52g2d5ZLe3ZMSAi6F7IcvtMNXQSRK9H125hA8Oa
 O26Temofm1E5rLDN2muQr/cGuigjo8rDbe5LNyz/Z5on3k4A1Ym1xaIzGxL1JTGPwCt/v11zu8Iiv
 8M2CFygpmIifIjD8=;
Received: from wout1-smtp.messagingengine.com ([64.147.123.24])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q4jca-008S0M-PQ for linux1394-devel@lists.sourceforge.net;
 Thu, 01 Jun 2023 14:49:50 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailout.west.internal (Postfix) with ESMTP id 1B79F32004CE;
 Thu,  1 Jun 2023 10:49:42 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Thu, 01 Jun 2023 10:49:42 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:sender
 :subject:subject:to:to; s=fm1; t=1685630981; x=1685717381; bh=Cq
 tOqnMtfLTl17jHaTNX0NBBuC9GEzqPFAtZkKhT4aQ=; b=FIO86q7ngSkYiI1pra
 hezdwZjk9KnSAiGxYi02eyU7t1HD6eIPKFWEd7HJh/jxbK3WmEmuXNAlJ/YgeIBu
 luoKtjCFQmq11NIpB5z5lDD7BDIGiztNJGLz+A/DBwa4LvmLsn3fas3Rl70aCR4j
 QQwvydBf+Lgdc/iBe2wJvYJ6ebqw7pJkS4Vv0O2LMiJXO3Fc2u+rtlVvzPjk/Nze
 m5GepDmUOZVk4/dZOxNczHQ248KmjLTksx07q76H1YIrMDEOXeVG7yImWDHYuVDS
 L3C6VglZYzwQVF0YcqXnROiz+x6BKS3Dtol5WBy/XkzAj87eHS4L3qKbPV9hJENQ
 gOhA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm1; t=1685630981; x=1685717381; bh=CqtOqnMtfLTl1
 7jHaTNX0NBBuC9GEzqPFAtZkKhT4aQ=; b=pzW9xq2p49aFzYxbwsnmSHK38zg0t
 xDUOWaJvD7RJd1pT6M3deQtrLj4x/CqfKx/XUp4QUbb0P43PO8XBqU1P4+Px8Tqu
 rk+uYbd/SypkomJPBVTjY7GQHNWLhwroINkQsHfXxZ4nA276WVugJGzPSdmw68Fd
 oBoHcmfiEoCGJs77lMFjNrUmo9Na7RMmL/SsHVpRKXA7vXa9OUAyuT06RaNCI9Bd
 RymMbSbdezNq1PTkWSfjxLxfBigNCK+5Fw0nw7PX9E88zu0KMQFOep7l7KbbUgJS
 8KqD8HpAcPXynkV6a7urIZyP5whFWwMH9SfIqvZwm999/YE+jMqoPGLKQ==
X-ME-Sender: <xms:BbB4ZKWmuhoNzYzokYPTJ986IzCyIH9pKuQTKvNVHgg_9hNt-nHe_A>
 <xme:BbB4ZGlOQxGTTjXcyb2NGNeaFHDVs1rw8URZVvAa9zaMkNgX1yRKiiWuK3IKJuCqv
 pJ_T6Os8WEJkybjr5o>
X-ME-Received: <xmr:BbB4ZOYQRyA4gSqshvJVhv4omiju_hbz8z7ZSscv9v6xjvtpsKVs2Q4MHHeAyQIs1Og3uiwbqKTe4xl3QsYgBNIXN9cuEBOQy9_ruVS2ygVKig>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfeeluddgkeduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffoggfgsedtkeertd
 ertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeeggfehleehje
 eileehveefkefhtdeffedtfeeghfekffetudevjeegkeevhfdvueenucffohhmrghinhep
 khgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrg
 hilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:BbB4ZBVCXOQAHtzWbw5s9sw9N-rvl-QZpwN5eVuikRCp_fekcjOo_Q>
 <xmx:BbB4ZEnFRnz3-Gxnut2dCnIPZtWc3QJsBJn_IUErcUB8BsKa3fqx-Q>
 <xmx:BbB4ZGcylC1yM77Rce-gmHQg4U8r_f58ntoW6zeagDZLU5EYIuVHGA>
 <xmx:BbB4ZAubT3Dya7q5PwKJn2_E1u1EXk4LDNcCU46-32lmhDkwtdCD2Q>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 1 Jun 2023 10:49:40 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [PATCH] firewire: fix warnings to generate UAPI documentation
Date: Thu,  1 Jun 2023 23:49:37 +0900
Message-Id: <20230601144937.121179-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Any target to generate UAPI documentation reports warnings
 to missing annotation for padding member in structures added recently. This
 commit suppresses the warnings. Reported-by: Stephen Rothwell
 <sfr@canb.auug.org.au>
 Closes: https://lore.kernel.org/lkml/20230531135306.43613a59@canb.auug.org.au/
 Fixes: 7c22d4a92bb2 ("firewire: cdev: add new event to notify reques [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1q4jca-008S0M-PQ
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Any target to generate UAPI documentation reports warnings to missing
annotation for padding member in structures added recently.

This commit suppresses the warnings.

Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
Closes: https://lore.kernel.org/lkml/20230531135306.43613a59@canb.auug.org.au/
Fixes: 7c22d4a92bb2 ("firewire: cdev: add new event to notify request subaction with time stamp")
Fixes: fc2b52cf2e0e ("firewire: cdev: add new event to notify response subaction with time stamp")
Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 include/uapi/linux/firewire-cdev.h | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/include/uapi/linux/firewire-cdev.h b/include/uapi/linux/firewire-cdev.h
index 99e823935427..1f2c9469f921 100644
--- a/include/uapi/linux/firewire-cdev.h
+++ b/include/uapi/linux/firewire-cdev.h
@@ -130,6 +130,9 @@ struct fw_cdev_event_response {
  * @length:	Data length, i.e. the response's payload size in bytes
  * @request_tstamp:	The time stamp of isochronous cycle at which the request was sent.
  * @response_tstamp:	The time stamp of isochronous cycle at which the response was sent.
+ * @padding:	Padding to keep the size of structure as multiples of 8 in various architectures
+ *		since 4 byte alignment is used for 8 byte of object type in System V ABI for i386
+ *		architecture.
  * @data:	Payload data, if any
  *
  * This event is sent when the stack receives a response to an outgoing request
@@ -155,10 +158,6 @@ struct fw_cdev_event_response2 {
 	__u32 length;
 	__u32 request_tstamp;
 	__u32 response_tstamp;
-	/*
-	 * Padding to keep the size of structure as multiples of 8 in various architectures since
-	 * 4 byte alignment is used for 8 byte of object type in System V ABI for i386 architecture.
-	 */
 	__u32 padding;
 	__u32 data[];
 };
@@ -231,6 +230,9 @@ struct fw_cdev_event_request2 {
  * @handle:	Reference to the kernel-side pending request
  * @length:	Data length, i.e. the request's payload size in bytes
  * @tstamp:	The time stamp of isochronous cycle at which the request arrived.
+ * @padding:	Padding to keep the size of structure as multiples of 8 in various architectures
+ *		since 4 byte alignment is used for 8 byte of object type in System V ABI for i386
+ *		architecture.
  * @data:	Incoming data, if any
  *
  * This event is sent when the stack receives an incoming request to an address
@@ -284,10 +286,6 @@ struct fw_cdev_event_request3 {
 	__u32 handle;
 	__u32 length;
 	__u32 tstamp;
-	/*
-	 * Padding to keep the size of structure as multiples of 8 in various architectures since
-	 * 4 byte alignment is used for 8 byte of object type in System V ABI for i386 architecture.
-	 */
 	__u32 padding;
 	__u32 data[];
 };
-- 
2.39.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
