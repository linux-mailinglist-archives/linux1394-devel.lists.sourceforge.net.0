Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BE55714892
	for <lists+linux1394-devel@lfdr.de>; Mon, 29 May 2023 13:34:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1q3b8q-0007V1-M5;
	Mon, 29 May 2023 11:34:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1q3b8p-0007Ut-R9
 for linux1394-devel@lists.sourceforge.net;
 Mon, 29 May 2023 11:34:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hPICvvJyN01FeQX1myCxTwggQ3ABUCLi/5+DEUBxRZk=; b=Lzk2lMGm9KkJJdx6I2vvjGwCnt
 vEgtOCNRUVQtnsBV3H7Bnjrzq++Y9uOhSTi9Y51bUPVMWY9wRJ8ZqAuzf6H7p66ag1mYjZ9r0XmJf
 UOAO6LRugfTJj4vV03jgsvjUg9qjIlpcSYotwGdkOy9hF34SbdHCmVlPPC8N/aRE7+Sk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hPICvvJyN01FeQX1myCxTwggQ3ABUCLi/5+DEUBxRZk=; b=luGFiGQrh0Yab4WY0s6sb0xaC8
 pSD2Tj0M/B3te17xACYLPteQ/UdnAmRcRHByEcThnB4N4IkjOk945l76pTAb31lbo4//d9DJvwgPh
 z4HCcALQ/xDZS6YRED0x89hYVuTXlCZDxZ/5NAUcXLYIjO3Zh4YxYqnuq21Fav9sNUIA=;
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q3b8o-005hmi-Cx for linux1394-devel@lists.sourceforge.net;
 Mon, 29 May 2023 11:34:24 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailout.west.internal (Postfix) with ESMTP id D20013200392;
 Mon, 29 May 2023 07:34:16 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Mon, 29 May 2023 07:34:17 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:content-transfer-encoding:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm1; t=1685360056; x=
 1685446456; bh=hPICvvJyN01FeQX1myCxTwggQ3ABUCLi/5+DEUBxRZk=; b=M
 7YJ7oLHvqaZh2l/KtuCvFNsjAflw42UxQe0JDywXvV79TmwQBfiPuR0VFJNp9KIi
 8B44QjseZ5Lcd1GPPd1IX3UIz+dc3TPSVkS+nLbZkaVOXBoOOBwA4L7JU85eR2CO
 zo2D2jEYAYoNzblrbJBBTu0ZxewEfgxyhQBPDQgYKQ4Qs7mlfPeye43dhBksvips
 W08+nyn6Hlmbsg035ss2DnfS7KFyKz3ScNM9CkGTvPmFsfRxf6NfvMaYE4xU8sVO
 M+s1YrLccC6E2YI4htfyBR7twa6DY9qEAT++9pRoY/La29V1BPHk9fBQ5KPA8c+9
 6gqg9xJhN89e9+ms4Tq0g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:date:feedback-id:feedback-id:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:sender
 :subject:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1685360056; x=1685446456; bh=h
 PICvvJyN01FeQX1myCxTwggQ3ABUCLi/5+DEUBxRZk=; b=VCVUebQVMWUe61t4N
 rEU0nlN/S9Yeu6b4Dm5s09fGKLui8fh8sNl3jjmCFVIvzAbz7MnlTyRwUCdgJQxG
 TdRP2kzv921AQ356W4Bp5vPgQhIXf2mZM37bD2KFq/ViO/bEwDSOSO+ojltaSYxc
 JbWsAP46zgdrehWISNOeP56H7IzDWmUV1TNaibbYHAqvfPze1YKuMQ48Zcyd2Y3h
 9+QsS1Cj1eVbaCC6usaVUPNJhZy2rfuOtPLJJZOrTJSrH3WbQGnhDglTTx5rrLo+
 A8OBqw3Djrl5n7lWOIqlxGj9hB3dC6ZyyQEa7m+3YB+qPr0pIoFDhsLxQc7UDOFP
 wq0CQ==
X-ME-Sender: <xms:uI10ZC7rdJMlNr0zyywJ9oQH95asVwSuBdiGTOpQg79jJYCypuvXBA>
 <xme:uI10ZL6Scc5k2-2YoNUOUWu3aQtukx2ZjvAnDx3D7GGEoemNjvP_jQwrZltu8oOQz
 ipXoizovbibY6eaCbQ>
X-ME-Received: <xmr:uI10ZBeHuvJAGDS9PXfYxrp-mZKybqGzSMxceztK0vE8pzAGuoPEIYGcRBXYm7_s1Z1B0aOntRcdkSCTumpAJEqTsMNYlkrsLq_tXo8EL-E_pw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfeekhedggeduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepveefffefke
 etgfevgeefleehfffhueejtdejveethfekveektdejjedvtdejhfejnecuvehluhhsthgv
 rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:uI10ZPKa4a4N0GbegrGHx25MC2t6WCd_bUtVlNrAxOAai7LTHi9EyA>
 <xmx:uI10ZGIpoBYwP1Hl-Iob0mEFz57hZLcTTgsQ-xQ2v48m--cuJ1dDtA>
 <xmx:uI10ZAxHnirLD1Xl7x5x4dQyMovm5rW4TmtNpMN_P56-5XffJeV1-Q>
 <xmx:uI10ZAzQkhstIRkLzdVtq8ihA8pqHAKDPkNgSCKb3NxHtE96oVEh-A>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 29 May 2023 07:34:15 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 02/12] firewire: cdev: add new version of ABI to notify
 time stamp at request/response subaction of transaction
Date: Mon, 29 May 2023 20:33:56 +0900
Message-Id: <20230529113406.986289-3-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230529113406.986289-1-o-takashi@sakamocchi.jp>
References: <20230529113406.986289-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
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
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1q3b8o-005hmi-Cx
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
index 92be3ea3c6e0..76441eb551e5 100644
--- a/include/uapi/linux/firewire-cdev.h
+++ b/include/uapi/linux/firewire-cdev.h
@@ -457,6 +457,7 @@ union fw_cdev_event {
  *  5  (3.4)     - send %FW_CDEV_EVENT_ISO_INTERRUPT events when needed to
  *                 avoid dropping data
  *               - added %FW_CDEV_IOC_FLUSH_ISO
+ *  6  (6.5)     - added some event for subactions of asynchronous transaction with time stamp
  */
 
 /**
-- 
2.39.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
