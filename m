Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A8284524B57
	for <lists+linux1394-devel@lfdr.de>; Thu, 12 May 2022 13:18:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1np6ps-0002Rz-A2; Thu, 12 May 2022 11:18:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1np6pm-0002Rm-IM
 for linux1394-devel@lists.sourceforge.net; Thu, 12 May 2022 11:18:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nirK3xVc/Xpd3RXmWv7GnNr+Cb6v4Tn8f6hpEo6+q/Y=; b=lDLY16oJugoo/dC/hKK05eQAdT
 FnBIJ44v0X9oiInuVziDQBvn0fQWtYvslwE0julZmf7EDHtjotEMwS9v4uNnmL7g3sktPbctcFbeO
 4IeJfnGko0IxCFzB4tHbTea/bT27WqJQASlTPOVH9r6KJRXBMW5QjCT9fiNtyupSyopU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nirK3xVc/Xpd3RXmWv7GnNr+Cb6v4Tn8f6hpEo6+q/Y=; b=RwyaPXZDnXr2u1zAxbPsVu4RnL
 Q5R0gOuCywQ07/6PEmBlo6rHjpjPAJ+RAyAqWWjl0IEpapjU7xl9nvpBfBIQ+TM9rD3DukZl6zs/+
 CBEh0jB3rCIWy0y432j3tqOuHgwRz4HUrlzFIhtzHvfgcqXkuyI9uAodo8NexSekzZSU=;
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1np6pf-0001mr-W9
 for linux1394-devel@lists.sourceforge.net; Thu, 12 May 2022 11:18:16 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.nyi.internal (Postfix) with ESMTP id 02F105C01D5;
 Thu, 12 May 2022 07:18:06 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Thu, 12 May 2022 07:18:06 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm1; t=1652354285; x=
 1652440685; bh=nirK3xVc/Xpd3RXmWv7GnNr+Cb6v4Tn8f6hpEo6+q/Y=; b=G
 2g3f7m6h50JCk4Ab9+xqxjNhCOMHa0FNfCrlSSkK/TW5E/l81EtOk+udoqI57HMp
 cBnRCg9XbHW2ncItQBKyiaEwz2Z7nGc6PZyyjzCyFJNr2952rRmnFgFePSs9rW03
 geDiXpITyJNXbZPRzX3dDBo8e4uF3KXGIA9pzbfUe1oL6PLHcvpYZvzn1V9tOBFT
 LmdBLNBjT2GTOflzJSdbWzw5UhZbNvHwbpcpv3q7Jcg9I4tlEUqtWDpwd8k3r4NE
 2iKx/KlY6haj0Wl1AhvM1HCYckgN4PsUriaAOYio7XQCuQjhlIt/uANGAXzXO0hC
 00EEyjLQJ+ctwxEzspDNw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:sender:subject:subject:to:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1652354285; x=1652440685; bh=nirK3xVc/Xpd3RXmWv7GnNr+Cb6v4Tn8f6h
 pEo6+q/Y=; b=fuM6+MD9slT261H3zcvBPXydL6GwbbuAdJzXNKjQNYEdT2CpvDo
 XlwKMSzH3e6DOXbZbCVV1Wyn9q5H0djaG3TZMtHb/oonex24IDttiKizfLPR7Ca6
 AJEYgxL4CdXWc5GZFFW8ONKRwaJw64Xm1cklZTnP25tSVMPfj3z+GSax4jE/KqIn
 9dlFkW9D4Kvrb1rCO+C8X0mdYJX7lZnWYsvpkWXkAghK2mOEXfEQ0OsiOdBdgKnX
 DSFgY74Rc1Jq3gbyd/jeF+rGutRVnlt7Nevtwde2Wd49U/WD64VgRZ0QH93bycHd
 xi/bvS+YXqC2iX2vGQjcsMHtLZ0sTx7T/3g==
X-ME-Sender: <xms:7ex8Yh4nvq20Ky15DhRl-G-DFCtmcUAnLUYQLTuuE_Cu9heMTZnwwQ>
 <xme:7ex8Yu63uSx-wigsUixvGR9aZZrQiFt2BxRWA5z1x_Ta-PQ67vlEapLr2vipt7lsn
 O1pmTrVFxOUCO7PH_g>
X-ME-Received: <xmr:7ex8Yod8G9FftIfb019T5LU0UBwmx37VKQ4wq_IHItRxzAx4JX3HaEjByGTatVD595esY9fzGFN9cHj0luPIcsFMUyG8aesZw52D3fVh6MsNtunoZzI>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrgeejgdefiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvfevufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefvrghkrghs
 hhhiucfurghkrghmohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjh
 hpqeenucggtffrrghtthgvrhhnpedvjefgjeeuvdfguddukeelveetgfdtvefhtdfffeei
 gfevueetffeivdffkedvtdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmh
 grihhlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:7ex8YqK77N3XImnBrYE9vQH8OVWjyzOqBETarLPGOfrv-PY9YhTb4g>
 <xmx:7ex8YlI0-98e4G2sIn3N2EHTZOeQnUNY07BW-HucWdTcNkTvBm6wvA>
 <xmx:7ex8YjyPdec7FjytP5RE6z7wZCf8TwqMVFkxv9_g509aLn7TpzZTMQ>
 <xmx:7ex8Yl0gcrcT9EGW9IOYf_bVRjqpuVsIDzPI_B8duwEE-8PU2jpuGg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 12 May 2022 07:18:04 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: tiwai@suse.de,
	stefanr@s5r6.in-berlin.de
Subject: [PATCH 2/3] firewire: use struct_size over open coded arithmetic
Date: Thu, 12 May 2022 20:17:55 +0900
Message-Id: <20220512111756.103008-3-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220512111756.103008-1-o-takashi@sakamocchi.jp>
References: <20220512111756.103008-1-o-takashi@sakamocchi.jp>
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
X-Headers-End: 1np6pf-0001mr-W9
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

Signed-off-by: Minghao Chi (CGEL ZTE) <chi.minghao@zte.com.cn>
Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-transaction.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
index e12a0a4c33f7..49657a793e80 100644
--- a/drivers/firewire/core-transaction.c
+++ b/drivers/firewire/core-transaction.c
@@ -778,7 +778,7 @@ static struct fw_request *allocate_request(struct fw_card *card,
 		return NULL;
 	}
 
-	request = kmalloc(sizeof(*request) + length, GFP_ATOMIC);
+	request = kmalloc(struct_size(request, data, length), GFP_ATOMIC);
 	if (request == NULL)
 		return NULL;
 
-- 
2.34.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
