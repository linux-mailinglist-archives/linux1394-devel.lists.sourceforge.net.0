Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EF46F524B6D
	for <lists+linux1394-devel@lfdr.de>; Thu, 12 May 2022 13:21:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1np6sG-0002V3-IC; Thu, 12 May 2022 11:20:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1np6sF-0002Ur-Tx
 for linux1394-devel@lists.sourceforge.net; Thu, 12 May 2022 11:20:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sY0qpOQXPgmJFgvkNCEQIW8UjRDURZNp7xYymx3dOoI=; b=mXtc5WlFNG9nyeZn0/PHYXbMzx
 2Et+TAOsOo3kSl+2VNSe5EP5aURYkSLRvwbZ4tnDihVuRZrkamBHLkCQ09AybS08FgeGG4cfO7ozN
 uGqn7Rf9fliEAoEOGfn17eIeaMBC9zFTp7mN0LGIRos99GquFAY5yJmBih++B2BY6dX8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=sY0qpOQXPgmJFgvkNCEQIW8UjRDURZNp7xYymx3dOoI=; b=c
 9+6aTwrQWhVnjrNIVxUeQQn6uJrFbQKiy0Qn9jySIWBrJXVNljx0VbDkFklHLcxpfb79yv7W9q0Lr
 jlcplCmXgh9QlWHKJfQOszJyU1SAKCBWuHu6IVVBFMGF1pQJtO2HQth4KfdjkYM/xW9qKfTFFiP/g
 y8DgnwFCDI1+8R3M=;
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1np6sC-009guY-8w
 for linux1394-devel@lists.sourceforge.net; Thu, 12 May 2022 11:20:50 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.nyi.internal (Postfix) with ESMTP id 5CCCC5C010D;
 Thu, 12 May 2022 07:20:41 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Thu, 12 May 2022 07:20:41 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:date:date:from:from
 :in-reply-to:message-id:mime-version:reply-to:sender:subject
 :subject:to:to; s=fm1; t=1652354441; x=1652440841; bh=sY0qpOQXPg
 mJFgvkNCEQIW8UjRDURZNp7xYymx3dOoI=; b=AtRQRrHwTS+NvHV/uP+id/cHHq
 hNDx8pbwyo2UdyBlxttjzjI8gUSEWnWWrt2Jq68ogddYhJPy8klFDb2R8FlCY8Aj
 MDQ8McA8JNFQdHkXQHcgaRtGMy9RLX2W0oYGOu54722s23aygZJBzAT3d0pIkAL6
 tIiY3MWbnvnYK7mcZVBgryBYDkd6xisJbnkA7XuKZoYCIHA2yu0AKWNjqT3FWl11
 zCvECgcMuZ2QmZM7S9nPFcKn6Z+XVVHTnJpx2pfZPgaBMZ9fXFg5iyBBp7FjIn6B
 DJTZCJdpEe2jyM9EHfkCs3+iUK70s8Pp4NRpNuYiQZp5sCu1m7rLOAXc4GJg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
 :from:from:in-reply-to:message-id:mime-version:reply-to:sender
 :subject:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1652354441; x=1652440841; bh=s
 Y0qpOQXPgmJFgvkNCEQIW8UjRDURZNp7xYymx3dOoI=; b=rXIknwetozsmqir+0
 ljyIE4Har33F35h4sKqyWm/RjjDbQZlHB1rhF1qRxB1uQGTBI5bTEnqixLCVw3RL
 tzXaaRviqr2iU9+HlDKM2DnxmlaysUDf1GZNpIe7YeTCYTV9/9EHuVuhWd3dvSq0
 AzsY1EEtD8FG5pkTHVYci/J9135+l78Ml44jq6JirKhdmeWb2Ofd9SrLMojoKMOG
 2m+VPCd7QSZUXasTOfQab89/7rq4d7PMrxRkPON7hYynN9NRac5ocYpQ32ekam6b
 HkX7dxr2nG92bnMKUDPk60pOnJ7Qet85CLjuds2XhatrbRwLQkevsRgRHHDr7TIW
 vtTgQ==
X-ME-Sender: <xms:ie18YvU-7RBjUasm-RycEcZQA0XQV7eS6EwXmPrpe0gPgLtV-TdSYg>
 <xme:ie18YnkIZiNkPXu1LP12B8qWlhkP0I__OrtEbaNFsyYilQL0zUc1dr7sPxw91S4Xe
 SnOJHBE5wbOG-esIeo>
X-ME-Received: <xmr:ie18Yrap-nLoMGup3cjWLjftJlVj8o66OLmRBuFUXoUtRV5JVYt60Vp4RvUP_wdGEKOKmZMVzeo4SWuTBjj6tpCOm8YbYA45CQ3jA24fAreLAxH4YXQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrgeejgdefiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvfevufffkffoggfgsedtkeertdertddtnecuhfhrohhmpefvrghkrghshhhi
 ucfurghkrghmohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhpqe
 enucggtffrrghtthgvrhhnpeffvdeuleffveekudfhteejudffgefhtedtgfeutdfgvdfg
 ueefudehveehveekkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrih
 hlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:ie18YqUy37WDXts9UUOjHnzfpYEZlrGdi2rl7Z1ukRPNiDv0zmd-jA>
 <xmx:ie18YpmS6Pn1Q0mZW9EJivwE8EY8vB7ebZCtKLD_KN7SER6Q0aHJog>
 <xmx:ie18Ynd9rq8JUwYueXUplwDsYt-EAMea44g5EXh1D-eTr_xcT52A1w>
 <xmx:ie18Yvh6RvZ5rnZLHdFBcYgvF-x_4QL1LsKsYKc3C-ExANqSllG6PA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 12 May 2022 07:20:39 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: tiwai@suse.de,
	stefanr@s5r6.in-berlin.de
Subject: [PATCH] firewire: cdev: fix potential leak of kernel stack due to
 uninitialized value
Date: Thu, 12 May 2022 20:20:37 +0900
Message-Id: <20220512112037.103142-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Recent change brings potential leak of value on kernel stack
 to userspace due to uninitialized value. This commit fixes the bug.
 Reported-by:
 Dan Carpenter <dan.carpenter@oracle.com> Fixes: baa914cd81f ("firewire: add
 kernel API to access CYCLE_TIME register") Signed-off-by: Takashi Sakamoto
 <o-takashi@sakamocchi.jp> --- driver [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1np6sC-009guY-8w
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
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Recent change brings potential leak of value on kernel stack to userspace
due to uninitialized value.

This commit fixes the bug.

Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
Fixes: baa914cd81f ("firewire: add kernel API to access CYCLE_TIME register")
Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-cdev.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index 8e9670036e5c..032ee56c34a3 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -1211,7 +1211,7 @@ static int ioctl_get_cycle_timer2(struct client *client, union ioctl_arg *arg)
 	struct fw_cdev_get_cycle_timer2 *a = &arg->get_cycle_timer2;
 	struct fw_card *card = client->device->card;
 	struct timespec64 ts = {0, 0};
-	u32 cycle_time;
+	u32 cycle_time = 0;
 	int ret = 0;
 
 	local_irq_disable();
-- 
2.34.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
