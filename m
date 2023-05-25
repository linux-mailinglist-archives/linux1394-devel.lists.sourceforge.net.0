Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D0DDD7109D6
	for <lists+linux1394-devel@lfdr.de>; Thu, 25 May 2023 12:16:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1q281U-0008Jd-Fy;
	Thu, 25 May 2023 10:16:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1q281R-0008Iq-NZ
 for linux1394-devel@lists.sourceforge.net;
 Thu, 25 May 2023 10:16:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Scx2YERYya4XNfuQABUzrTu3FrRelGdDymkzNIze9SM=; b=Ug1gT8PlvK5fUKcyxRGbwpuQ5l
 h7ehfwuNW2LsfjU35srFyNSmnW9VTS68B6StybZ03tYTlsQRljWJtjmwXiAirO2g/gil6VlLIyWwP
 Vtd3sVFSMpefI3KEKntBi2XovqtY9ydQSqpip+qsY+k0+IRHGYu7MtC+t6ZRYFrmHXEs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Scx2YERYya4XNfuQABUzrTu3FrRelGdDymkzNIze9SM=; b=Wl+tV9Gpi73jfxZX4efcEvsesm
 VmG9B0TU59Cc7/YXxyD6ZxmM4Sc9wEzM3Tm7xDQiA6XRqndCG5P3Q81jteTaKgp9tqNo/0zVtDpZb
 MIm+7AekAK03iMZRaeXoP2+LRTK+aMoNIe/+ISU9ywtda38MZeqKGbKN2b3hlKPpSb90=;
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q281O-0004V9-Dx for linux1394-devel@lists.sourceforge.net;
 Thu, 25 May 2023 10:16:42 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailout.nyi.internal (Postfix) with ESMTP id C76315C005E;
 Thu, 25 May 2023 06:16:32 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Thu, 25 May 2023 06:16:32 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:content-transfer-encoding:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm1; t=1685009792; x=
 1685096192; bh=Scx2YERYya4XNfuQABUzrTu3FrRelGdDymkzNIze9SM=; b=t
 URz73QyTJeNYVfkWY4u8oGDpXhfvPRD4wmi9qORH7g4LETGWvIGVmPu8lfLUMIF9
 CXE/laTx96Xb0kHoUdWyQIktPXBxl5mn76XNr83bAdK7kaaGcZw7JvZTaoZrfS1V
 52mZh/Ckm5FGNHpUc3c+zK+4MWmtTLdVU1OvqOQlZekBI6acw5YioKUGt6souALf
 qS0AwQ/KKS7yE0Uhdlmqk9qV1Z2k67pH485EllcZfZqI6HU8r90xlAY0YEsBPMAR
 DNgLQGOhd3XTkq6OlOrlnQZRyHztzkjvJllC3kRxN44KwRZylP9lBYFho5RndlId
 GsyTOvk0k5UpP1JJ5TSvA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:date:feedback-id:feedback-id:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:sender
 :subject:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1685009792; x=1685096192; bh=S
 cx2YERYya4XNfuQABUzrTu3FrRelGdDymkzNIze9SM=; b=RIlv5kRuoe2I7bagc
 HKNwjq7jiM+akJ66uEsfL1gqofg2EGh213DjhuXyWzx5nEQKwGbhageywJOWcnwI
 IFwOajenEdad7HrteyCmeJksvbL4lMZQOyZSHTxoxI/P1Q2e15WC9QQiT2FHuioc
 ZtkC74kzNlagxJpNKJDLBWifbQ2QeVu+HuaiS3mpDr8YJCkvaZt5KZ0+opY8AJ5S
 hNOgfjuDFwVtpfWOES7srSeHh5boR6fYbVXL0RdWyn0hrE4rH6CXaCoeiTvgApW1
 ZPy1frlDtIR02P68s9bBbqolfD6PjimAUzB6XGTTj1+YPHBF+QK+J4n41FzQ54My
 dXHVg==
X-ME-Sender: <xms:gDVvZCh_3NqZ013fxEGBR_d63gbcS3KSWg-oP7pgemUDRgZEhBmi4w>
 <xme:gDVvZDAw9noM_q1rnbPTvcldWIBRUR6Uq1KpsSIzAg3r-NMY6c-dz-u4c0LYxz6ok
 lslW4Fo7opFGaobIEI>
X-ME-Received: <xmr:gDVvZKH8vY2VBSh59QM7HSUFeOOZo_lQAcijxbEwarNu7K3jYHGdl4lylhUahWE_oDb1rz6LsOvyDcS5F5Csd9zsaNwRUtw-eiAoMJwY_bwQcw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfeejjedgvdehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepveefffefke
 etgfevgeefleehfffhueejtdejveethfekveektdejjedvtdejhfejnecuvehluhhsthgv
 rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:gDVvZLSiLNLFdTSMIWQHATlMWLRFQXBMTF6VFvPbR11NaRZ0qgsdcg>
 <xmx:gDVvZPzCYungOf8hCxhdOTHM8yGVHaljGiLhvKD1mEabgFF-7LFANQ>
 <xmx:gDVvZJ4JcuOv-Q51mMTMevkFcZuiSbXlhuWS5jPepT29CMbd03A0ng>
 <xmx:gDVvZNas9--L-cd5E1z7b-Wz9BQGflMsOiG1nHZ2f-99PxS49kPTuA>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 25 May 2023 06:16:31 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 02/12] firewire: cdev: add new version of ABI to notify
 time stamp at request/response subaction of transaction
Date: Thu, 25 May 2023 19:16:15 +0900
Message-Id: <20230525101625.888906-3-o-takashi@sakamocchi.jp>
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
 Content preview:  This commit adds new version of ABI for future new events
 with time stamp for request/response subaction of asynchronous transaction
 to user space. Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
 --- drivers/firewire/core-cdev.c | 1 + include/uapi/linux/firewire-cdev.h
 | 1 + 2 files changed, 2 insertions(+) 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.28 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1q281O-0004V9-Dx
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

This commit adds new version of ABI for future new events with time stamp
for request/response subaction of asynchronous transaction to user
space.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-cdev.c       | 1 +
 include/uapi/linux/firewire-cdev.h | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index 2c16ee8fd842..88c8b5fac5e5 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -43,6 +43,7 @@
 #define FW_CDEV_VERSION_EVENT_REQUEST2		4
 #define FW_CDEV_VERSION_ALLOCATE_REGION_END	4
 #define FW_CDEV_VERSION_AUTO_FLUSH_ISO_OVERFLOW	5
+#define FW_CDEV_VERSION_EVENT_ASYNC_TSTAMP	6
 
 struct client {
 	u32 version;
diff --git a/include/uapi/linux/firewire-cdev.h b/include/uapi/linux/firewire-cdev.h
index 92be3ea3c6e0..e3d463b2c288 100644
--- a/include/uapi/linux/firewire-cdev.h
+++ b/include/uapi/linux/firewire-cdev.h
@@ -457,6 +457,7 @@ union fw_cdev_event {
  *  5  (3.4)     - send %FW_CDEV_EVENT_ISO_INTERRUPT events when needed to
  *                 avoid dropping data
  *               - added %FW_CDEV_IOC_FLUSH_ISO
+ *  6  (6.4)     - added some event for subactions of asynchronous transaction with time stamp
  */
 
 /**
-- 
2.39.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
