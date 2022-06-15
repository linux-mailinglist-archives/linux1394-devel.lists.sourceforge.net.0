Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A9DD654C83B
	for <lists+linux1394-devel@lfdr.de>; Wed, 15 Jun 2022 14:15:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1o1Rvj-0008Lu-5R; Wed, 15 Jun 2022 12:15:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1o1Rvh-0008LW-Jh
 for linux1394-devel@lists.sourceforge.net; Wed, 15 Jun 2022 12:15:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MtKBc2bhfjgMYC9HTZUX2V0/dMYlGGjy+AYAPIY7ZaY=; b=lNVz2yP7iZA6vb8wsEurvdU2iL
 Y026Z9eVKeQd0GZK43kY/k8Es1BOtPJ1JD9CiCyBPV/KPXWdyVE7dyOJ4hCd5kLWEsmUhchuYwWNv
 1XP93RHbufWmF6cGjHwciQViT5h+EFXPM1ntLSge/I1HW3CbOAtAcRs32xzD+H5wtlGQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MtKBc2bhfjgMYC9HTZUX2V0/dMYlGGjy+AYAPIY7ZaY=; b=b7SZkFifwS0RX+vfcqoU8KIhPP
 hQz2Ujaz+tv9HEpZro7MOZCbO2o0m8xkPpFutzbz3ZBsah2n421kInrmZclrAHBNhjI9QmN/1fXRQ
 gQDrXhyITtyets7Fof69ENZpbm6F/Uchw0vpsJPm/+yD3YR0+7kG37PlGD7DFcug590E=;
Received: from wout3-smtp.messagingengine.com ([64.147.123.19])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o1Rvf-0000d5-Py
 for linux1394-devel@lists.sourceforge.net; Wed, 15 Jun 2022 12:15:26 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id A0E5D320094C;
 Wed, 15 Jun 2022 08:15:16 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 15 Jun 2022 08:15:17 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm2; t=1655295316; x=
 1655381716; bh=MtKBc2bhfjgMYC9HTZUX2V0/dMYlGGjy+AYAPIY7ZaY=; b=p
 OgL8x/LCbQn1ZNkAoeJT4yLKckCmZt8L9inva/gKLl6CpoP9eEI22A/mBzZX9jnm
 wqyNxQVfZtkidxjFf8VlyecFpGPQ09/gslVQ5d70YOwlFecNNKsLrTqLySQIjwhL
 aSx7iJ2RcepelsJ6cf+ZX5C6uHPLVViDbMUCDlGZy1fYbElhRJWB3vIiGHUjzU/c
 u92UHw8GtvDbS1QFCC8N/ZV5p71LYSX0EMla5a3am/2HjWFlp2BnbaseFbsN1Tqv
 6HFt8YnkA54eCI8cLcnghCsLv6D6EGIZyFTLFC+PSum3ZQkQge3ndIeLeMZuJZJx
 ZEzDhF4eVqN01DYLFN3Xw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm2; t=1655295316; x=1655381716; bh=MtKBc2bhfjgMY
 C9HTZUX2V0/dMYlGGjy+AYAPIY7ZaY=; b=PVvL8wis2OyJPIAnu6qZutU3QqpUW
 RtyTWLXpnh6h7PzT0oEq45F+GGr3AMHs0YPPblpfJuxT1o4o33wMMrI7iF7YqmOn
 huXzEkzdumAHvu34ciSbfvcnwqwwEvMBfXFPB2dVbSde0i+OdxP50ctK3/LlhG2R
 XLTk6qh85FV+sQ4cGUSfu/DjZpP28hXLrw40c8daTnhHXGKovUakyrVJlyidGfQA
 mQZeuiKt7CRdkT3M1IHPnZusupUxYy+841Pd/Tw3+kjOOJ05z4Fmrwv4QCtIil1e
 NWwWh7Js6UJoA5rIh+Sm7fywjqmiI3JhngJQTyUrMPY7bmIC4fG9FFyyg==
X-ME-Sender: <xms:U82pYuz_TJtOmm6mspO7Xm37siDuNEseBoT97cMLhRtQyPMLyobooQ>
 <xme:U82pYqQbPSsGwQEWF6luJTCwJ_bwvVchVBDq0Xt0xljdx7glXI13PIx9eOxiNa6DM
 tgUwppIWiIyRFI-fb0>
X-ME-Received: <xmr:U82pYgV1avoX-ZvtRJOj0yhMYXgBtrSo_pJcKGY0O2ZINljwUz23LDEXc4-EjcfkMKdS1I40zkvprv65LfZlc_UzAxL-ec0WvT2Grbruf-f9w4GAwng>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedruddvuddggeejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvvefufffkofgjfhgggfestdekredtredttdenucfhrhhomhepvfgrkhgr
 shhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhird
 hjpheqnecuggftrfgrthhtvghrnhepvdejgfejuedvgfduudekleevtefgtdevhfdtffef
 iefgveeuteffiedvffekvddtnecuvehluhhsthgvrhfuihiivgepudenucfrrghrrghmpe
 hmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:U82pYki99b-h3W2WehOkNvDXxU_tTsUvrBcHd_NzwB_10xDXbirXmQ>
 <xmx:U82pYgAMVK7EWE97mXawaesmtXBCGs1d1Z571tmA7RKa61HeMAkbSg>
 <xmx:U82pYlK4d00e_xrLu9F84qa6zu_TwrZGcHkdi8R8TG0ejpOHCFqdnQ>
 <xmx:VM2pYjMWbM-m2btWT4YcTBJ9B1SeBFl7ZRhihAKJcg4mvyNMrL6QOw>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 15 Jun 2022 08:15:14 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: tiwai@suse.de,
	stefanr@s5r6.in-berlin.de
Subject: [PATCH v2 2/3] firewire: use struct_size over open coded arithmetic
Date: Wed, 15 Jun 2022 21:15:04 +0900
Message-Id: <20220615121505.61412-3-o-takashi@sakamocchi.jp>
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
 Content preview: From: "Minghao Chi (CGEL ZTE)" <chi.minghao@zte.com.cn>
 Replace
 zero-length array with flexible-array member and make use of the struct_size()
 helper in kmalloc(). For example: struct fw_request { ... u32 data[]; } 
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
X-Headers-End: 1o1Rvf-0000d5-Py
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
 "Minghao Chi \(CGEL ZTE\)" <chi.minghao@zte.com.cn>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

From: "Minghao Chi (CGEL ZTE)" <chi.minghao@zte.com.cn>

Replace zero-length array with flexible-array member and make use
of the struct_size() helper in kmalloc(). For example:

struct fw_request {
    ...
    u32 data[];
}

Make use of the struct_size() helper instead of an open-coded version
in order to avoid any potential type mistakes.

(Revised by Takashi Sakamoto to fix the value of third argument.)

Signed-off-by: Minghao Chi (CGEL ZTE) <chi.minghao@zte.com.cn>
Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-transaction.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
index af498d767702..4604a9d97fd1 100644
--- a/drivers/firewire/core-transaction.c
+++ b/drivers/firewire/core-transaction.c
@@ -779,7 +779,8 @@ static struct fw_request *allocate_request(struct fw_card *card,
 		return NULL;
 	}
 
-	request = kmalloc(sizeof(*request) + length, GFP_ATOMIC);
+	request = kmalloc(struct_size(request, data, length / sizeof(request->data[0])),
+			  GFP_ATOMIC);
 	if (request == NULL)
 		return NULL;
 
-- 
2.34.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
