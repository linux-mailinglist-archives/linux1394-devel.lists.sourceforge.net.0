Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C4DB3524B56
	for <lists+linux1394-devel@lfdr.de>; Thu, 12 May 2022 13:18:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1np6pl-0006hQ-Qo; Thu, 12 May 2022 11:18:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1np6pk-0006h6-5J
 for linux1394-devel@lists.sourceforge.net; Thu, 12 May 2022 11:18:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=H1TGreYI/MRSwNTVTCp09YIeRc7cCCHdO6Rbul0lX/Y=; b=SR96brhu+gwazNDRWCkjMP5HvX
 NRS4S+CKZLXkFOAmaI0s7M/jpdT0QWEX/wKUnrnI60QsJEVea1NB9jFcqNZPJIeyLkOYFl/khdu9U
 XfW35421pNjyYABvEyoDlnxJ4jSXccqhyIqCRhbhtr8iEjnetZ1FrPt8NC947GICvjSI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=H1TGreYI/MRSwNTVTCp09YIeRc7cCCHdO6Rbul0lX/Y=; b=fSaGA6+ET30UpdJJQTUeRP94LL
 d/7gBqSoosCyueGZUi7JjvbLFFyJjmdlf95KNq5XqSiJE5rD7wEJ4pyIAKZEgBcU0TXCEuXo/sSAh
 K/UbuQaLrGM5VlfL4MPsRjPGTMAnQlJKhEFRmojg23NsMIQmkX+fSbDnDpSXViT8UelA=;
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1np6ph-0001mx-TS
 for linux1394-devel@lists.sourceforge.net; Thu, 12 May 2022 11:18:15 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 0ABEF5C018E;
 Thu, 12 May 2022 07:18:08 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Thu, 12 May 2022 07:18:08 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm1; t=1652354288; x=
 1652440688; bh=H1TGreYI/MRSwNTVTCp09YIeRc7cCCHdO6Rbul0lX/Y=; b=D
 QPBlNLpgDxcfhzylwnHCISh5Zq26QbXe2toOjAd0AcsEfPyJOVB/19HpbTlH32Q9
 eS4c2/WL8ivCYghi48Et6DB8KMbnIGCIgmTUibdfZvQldK3vf68Zh7ZiLXJuA9MV
 Rqt+4aC8knByDdIPvYC57MdVzHBadvnCg3pNr7Cgf4IaEq5CiGpznCI7X5tUZRNd
 4pUMl+DkxIY2vjhBX7J/GZGkaah3W2j5wyvJubR4T3eaP9E8m03Eu2VcUUe5H4VU
 M8D2imGBqXLANOO6TDRTOiuGM8knX/UNzF4HWEJ/mf/XH9AkSftiH93if8XJvN9n
 Hfa2KZuw7JNJY1OdSuckg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:sender:subject:subject:to:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1652354288; x=1652440688; bh=H1TGreYI/MRSwNTVTCp09YIeRc7cCCHdO6R
 bul0lX/Y=; b=D7Cfv6KflQpskpctFLaH/da4Yoj1Y7zkLjkIEJBjKHCAcRI7Cvh
 gsI/PdJDPCaUnVX87lQBawrqzTmxMGRIo0ioSmcXQkSdGy9b58KlE4XQ+bDwXspZ
 e3ZtBAKNTQjnwNa9BZPhL3rzOfAMiGIvNP5GKJccyLPTv4pcUNEayyldljk9MZzt
 0vF024Asc5Ah11lHARBfJ/qLyBbjNEyNASctsQnt8rnKjLeTxgUNEGbpoTW2qibq
 hZHAeWcG1MXckoomh+gEBvHm2uF2gl+GZMOy3WS3bnx5mFqj7elS3rRKVR8I3DzN
 frZbvjIicIE+I3g1N4ooTquQ/gVqq0dz3wA==
X-ME-Sender: <xms:7-x8YicsjKa4l_Ll94FvDixLf72O0E08l9rk3ILX6-GBi3X5a4jtKA>
 <xme:7-x8YsPyQ6dJyMkLLoesZ06hjd1Cb6JOU0zLvXk0Gw5wddJUq3pSLV4ECtqcl8zL7
 UUtPFs5VYp630oSZLU>
X-ME-Received: <xmr:7-x8YjjnLSF14gkU4Mit6e96tfUT0D6MJaKg9k7_CbkngZkiiRbprHm1LBSUfdT3XwqRQpZuLn7IAjhQiqsxchstw6ECUU6zcuSwMtgiJ_u_TTvnlZE>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrgeejgdefiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvfevufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefvrghkrghs
 hhhiucfurghkrghmohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjh
 hpqeenucggtffrrghtthgvrhhnpedvjefgjeeuvdfguddukeelveetgfdtvefhtdfffeei
 gfevueetffeivdffkedvtdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmh
 grihhlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:7-x8Yv8uy1qbcFGt_GFWcaL505QoXxI3EKbe1vhXlb3Zic3qVitAIw>
 <xmx:7-x8YuvgE-ZhWKgVMoYIZJHDNiPuF4uXDgBytHTUYlTvO2xFD5bNKw>
 <xmx:7-x8YmGCFHagaKWEzSuuOXz3pA_YawXwpYlMrEly8lvcL1g58GNj3w>
 <xmx:8Ox8YgIx6VGhg6qvcs0QWZ80Nulz0yat62onfb6t2o0a6C_Ap3vmRw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 12 May 2022 07:18:06 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: tiwai@suse.de,
	stefanr@s5r6.in-berlin.de
Subject: [PATCH 3/3] firewire: Fix using uninitialized value
Date: Thu, 12 May 2022 20:17:56 +0900
Message-Id: <20220512111756.103008-4-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220512111756.103008-1-o-takashi@sakamocchi.jp>
References: <20220512111756.103008-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
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
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1np6ph-0001mx-TS
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
index 49657a793e80..d10d890d7d48 100644
--- a/drivers/firewire/core-transaction.c
+++ b/drivers/firewire/core-transaction.c
@@ -778,7 +778,7 @@ static struct fw_request *allocate_request(struct fw_card *card,
 		return NULL;
 	}
 
-	request = kmalloc(struct_size(request, data, length), GFP_ATOMIC);
+	request = kzalloc(struct_size(request, data, length), GFP_ATOMIC);
 	if (request == NULL)
 		return NULL;
 
-- 
2.34.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
