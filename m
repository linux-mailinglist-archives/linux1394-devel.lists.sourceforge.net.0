Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F1AD54C842
	for <lists+linux1394-devel@lfdr.de>; Wed, 15 Jun 2022 14:15:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1o1Rvj-0008M4-Af; Wed, 15 Jun 2022 12:15:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1o1Rvh-0008Lg-Sj
 for linux1394-devel@lists.sourceforge.net; Wed, 15 Jun 2022 12:15:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mn4bqWxQrWS6iJkrNhpBpakosj8nE7J+QhXoG4Ef3II=; b=TaoW+rlyw7dyyzcZ7WadGHiz16
 IUtz+maHMG1PoArcsD0210ieIPMxETSSHoOrYqmyOjfsNy9m2q722Yvxkv2WPzsTcE35+hiXSfoiW
 kj+IxnwI3M/QiOIBVc6u1zA374OJCBUocxDsLqAjY0vDYkiEl4Thkqmz1lID7/fWDs6E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mn4bqWxQrWS6iJkrNhpBpakosj8nE7J+QhXoG4Ef3II=; b=XG3nwhWmGEZFWE8vtRWbHXCWe4
 BWsle2peNAm8ERsg26WCEb8wF7SiCnAlNVveG9LjE9Mv9eS1tTPrM8cXlYEA0IlACaxDXwL4PBWUG
 BAryLL0hGfHUBugMiBWs/aosUZ+2H5VDvQLtyd+QL8CwIthfUIjNxKy8mUA5fE9unYTk=;
Received: from wout3-smtp.messagingengine.com ([64.147.123.19])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o1Rvg-0000dF-JQ
 for linux1394-devel@lists.sourceforge.net; Wed, 15 Jun 2022 12:15:26 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailout.west.internal (Postfix) with ESMTP id E8E023200A11;
 Wed, 15 Jun 2022 08:15:19 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Wed, 15 Jun 2022 08:15:20 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm2; t=1655295319; x=
 1655381719; bh=mn4bqWxQrWS6iJkrNhpBpakosj8nE7J+QhXoG4Ef3II=; b=1
 JEDtJamCHSnlV4g3ZJPLlIqoNy6qVp8QffkxG3pLNBxSjRIffTBTuW/txl47hbz/
 DWZQTCqA6kvc0HakGZRY1qyZXAx8BHJKk5NSNF/FDQNRsuuSCW+mHR/w1NCHvlWB
 FijunO/JUg6nnmQ751LdvK8qwRgFSYHs2LEsh5KZ2h2OpUF9hnsMLPVqIRQsp9My
 xY1Q8bIT7whN6YPZdKrfHa8AvFHKU4K/lnfamVzNW84IbKDCXVpz+7yzx8mclok/
 3u1LmsGvRdEaJOvvhaaEbXXfHfyy4y5Lh6jqo5NUIXo2Y86AtB/ymbgH03o6F4jB
 hq1yH6LR2kqrstWoa/92g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm2; t=1655295319; x=1655381719; bh=mn4bqWxQrWS6i
 JkrNhpBpakosj8nE7J+QhXoG4Ef3II=; b=ZqsY+kUb8yhkg2xb1THUEAeG1ub24
 z+qTG1sfl/+eVsin+n/MsxKjM4Q2x+7b7KerwrppjuDwdDz6vIc32rfw2tGAOhd/
 UWexrYfBbnwaX5FF6WNW6JPV0sar141zYh0GrKG2+SqVejVW/2qqrW9JuPWP5H6S
 fqC/ErnwRBy6y8ckS2Kl1G/fNwx4+V0GPfM6LgJYPRGwOrMkMS4zAOLnOCcUu0eN
 QZi4ggg9IMz5SES6H0bP0j8Re3lUtuLwpzhy/lEZdFo9sbXN9CJJ5p778LCncN0I
 DThlB5Sz+fvp3YTpML+ollHzaTVnlgQ++iXAxOQW5yz01+4xku43ESKJg==
X-ME-Sender: <xms:Vs2pYkAvi7nPo88wWkMZ9j3Yp9XRSzwhy1Z-sNPGbQFGCIb1oP6CAg>
 <xme:Vs2pYmi6rGMTDqCIzd0sNhti0F_ICM9HiRFH6TgBBXAyiegVyLuFtL9PsxgdxcnyK
 m6Gz-qD5yXDJ2uWGuA>
X-ME-Received: <xmr:Vs2pYnkmRZ-aUatU_ci9a2B9BU5p9ZJxjV6oMDJajx-trOQfExIoXynDifhpU7UCJaJcMre027hyaIkmJyTMG944OqiVWxDa2yyaBFGPObAWLxyrU1w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedruddvuddggeejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvvefufffkofgjfhgggfestdekredtredttdenucfhrhhomhepvfgrkhgr
 shhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhird
 hjpheqnecuggftrfgrthhtvghrnhepvdejgfejuedvgfduudekleevtefgtdevhfdtffef
 iefgveeuteffiedvffekvddtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpe
 hmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:V82pYqyDcZuSoqTJSEHW16a6SWl9-uGgx-_Q2e4F7oW6Wc34g_2OeA>
 <xmx:V82pYpRcdfLq2mWr-2B-jwbtvuT3XiGzO5PAmLtBD2A8UeOj2WgEug>
 <xmx:V82pYlb_e97SXlq47L-6ZvR5cEQegFqWtkGKe98xGhV3NnbChOVIOg>
 <xmx:V82pYnMc-WXWfb08GbBT1xsrLpuZvzB0RVrRZOjUPlJ7zJjS28apWQ>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 15 Jun 2022 08:15:17 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: tiwai@suse.de,
	stefanr@s5r6.in-berlin.de
Subject: [PATCH v2 3/3] firewire: Fix using uninitialized value
Date: Wed, 15 Jun 2022 21:15:05 +0900
Message-Id: <20220615121505.61412-4-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220615121505.61412-1-o-takashi@sakamocchi.jp>
References: <20220615121505.61412-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Lv Ruyi <lv.ruyi@zte.com.cn> If data is null,
 request->data wouldn't be assigned value. It is random value,
 but we use it in handle_exclusive_region_request()
 and handle_fcp_region_request() later. Fix the bug by initializing it. 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.19 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1o1Rvg-0000dF-JQ
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
 Lv Ruyi <lv.ruyi@zte.com.cn>, Zeal Robot <zealci@zte.com.cn>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

From: Lv Ruyi <lv.ruyi@zte.com.cn>

If data is null, request->data wouldn't be assigned value. It is random
value, but we use it in handle_exclusive_region_request() and
handle_fcp_region_request() later. Fix the bug by initializing it.

(Revised by Takashi Sakamoto to rebase to the previous patch.)

Reported-by: Zeal Robot <zealci@zte.com.cn>
Signed-off-by: Lv Ruyi <lv.ruyi@zte.com.cn>
Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-transaction.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
index 4604a9d97fd1..613aff624391 100644
--- a/drivers/firewire/core-transaction.c
+++ b/drivers/firewire/core-transaction.c
@@ -779,7 +779,7 @@ static struct fw_request *allocate_request(struct fw_card *card,
 		return NULL;
 	}
 
-	request = kmalloc(struct_size(request, data, length / sizeof(request->data[0])),
+	request = kzalloc(struct_size(request, data, length / sizeof(request->data[0])),
 			  GFP_ATOMIC);
 	if (request == NULL)
 		return NULL;
-- 
2.34.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
