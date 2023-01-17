Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FDB066D9D0
	for <lists+linux1394-devel@lfdr.de>; Tue, 17 Jan 2023 10:26:22 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1pHiEN-0006Dc-8O;
	Tue, 17 Jan 2023 09:26:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1pHiE8-0006D9-9o
 for linux1394-devel@lists.sourceforge.net;
 Tue, 17 Jan 2023 09:25:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bBFBHdgUExDtLc/7PnHuZCFolfc8GR5+frlbC+WuxQ4=; b=TpNKbAK7yUHLg+opRKX3kDgU9A
 emxq+ghwE6n10e/hl8bxNOaQfwA8UkJm+N053ydJkK7fmkgnG9slEa2pga6nRMQjtoAHWftyJ5pBT
 mFk/aG5dXcAfS+YhQMfVeQGIcu588DKwS/jPdeAroa4vuEmqwGEBMovSsnSLm4P7Kv6U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=bBFBHdgUExDtLc/7PnHuZCFolfc8GR5+frlbC+WuxQ4=; b=F
 bLNEKetrw7p1IA6nqhCtjrTcK5JsTTR42hNjT0N3+ote31VEXnopxSNJTc2nDYLFeiryFWhyLF7v4
 qJJ/VNNPAYkhMKiVvoV1pYme0E56ygxQFVLf/Y5q+XTenWZkScKyvKFJQdBE5pXWfo5Ka1gvLiNjB
 neCTOWPtSz8Uf2L0=;
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pHiE4-006bnL-IH for linux1394-devel@lists.sourceforge.net;
 Tue, 17 Jan 2023 09:25:54 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailout.nyi.internal (Postfix) with ESMTP id 3F6295C00E4;
 Tue, 17 Jan 2023 04:06:15 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Tue, 17 Jan 2023 04:06:15 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:date:date:from:from
 :in-reply-to:message-id:mime-version:reply-to:sender:subject
 :subject:to:to; s=fm3; t=1673946375; x=1674032775; bh=bBFBHdgUEx
 DtLc/7PnHuZCFolfc8GR5+frlbC+WuxQ4=; b=BKpkK/uu5m1z1sNkezqUciat0Z
 KCxQJIb8Uqfsca0VG2Hq1sKEJYBpKQ5S5Zd2AKuodusHQ4F7KczG7NBQD0AyBPWE
 Om1HJOFqA6c6BnpILuW5eTr70Y+NAXGVCbDYAos416zhrr10Dxhlq6Y8Ay6vQZMb
 Bzw440eknpSGWtpww9t83FiRT0RDmzLzN+rjU4VdM/V4ei6L8m34n/kPu5IIEWjz
 vVjOO8lsCbeXMMtBJN3t2F23sS6atOEOw+Gp/K3CH1TM8ohfJhVkFTi9wy2/s5Al
 h1vw4jKrcc6JhMWt8wtPwMExwGQ56DFVNM9jUB0DcEMPTl2NDlUwv1/HG1YQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:message-id
 :mime-version:reply-to:sender:subject:subject:to:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
 1673946375; x=1674032775; bh=bBFBHdgUExDtLc/7PnHuZCFolfc8GR5+frl
 bC+WuxQ4=; b=KXodEdAgLxLnX5G0K3mUsjlOBNf5clBOSH7kW8zTuZVzun+LG5I
 fFn2BZ+QLh7ahpiFcmCsmHP22HDavDgrpSjkiBdx2XfFctWb0RsbByFua0eOxMOl
 qzePwDrad0fG4n7eWk07XyX4NC4fpf8/8WhfSVqTOvvsR3ozz+9ugnZZcF5Kum9G
 Mc/vLZAASa5MJG6pVzv1Y6Q+5am3nOyjndFs0eVCqp5yJWYPtKkjuunLgmXsZuXO
 wZ3o6uEDnOlI13pylrCDJFp3ebsu/LzGZinjuWtIozTiI1jJgcYZaeWW/dqmXgJ9
 IQc8zddcn4fpRxov00Mz95+jC3kpyt3MaBw==
X-ME-Sender: <xms:BmXGY9nYlvb3T1sNjzAcBwreLwH5fmMcHuU8OfcXeNoZ2DvkBP9GgA>
 <xme:BmXGY41mD-MTV-u4bgAK_FN8-i_gw70_jMbJHGdVL5l_BDEO3DJzipJa1mpgQ7bwS
 rSjBQkHba_UUkW5xbE>
X-ME-Received: <xmr:BmXGYzqwDUugU_Oeqeg8dBjvCzmmf7yZFwtJQtUp45AcqW1HvKwTi-5RQ6oSxuw4SC7XkIU1Mj1JjyuktzWw4fQp-r9VVF3P1_-gtCkSOCWI09QQmmgRSaQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedruddthedgudefudcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgggfestdekre
 dtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepffdvueelff
 evkeduhfetjeduffeghfettdfguedtgfdvgfeufeduheevheevkeeknecuvehluhhsthgv
 rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:BmXGY9mQg0d_jSwkaIVRtzdcPNaGMzsznzqNXQPhFpN9MBVIIlEBGQ>
 <xmx:BmXGY71md5kfUijFt804Yxo97Bu87av6gMt7LziVvovdTycF4jfU4Q>
 <xmx:BmXGY8soR7utB0zHDzNI_WH1_LSAvZO9Zlnq4ABEr3Ai6KStYu3vNA>
 <xmx:B2XGY5CuT-p34ph1JC6Cha2StnKOWmaw9Peq9FQbw-N5Iw0zWtA4DA>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 17 Jan 2023 04:06:13 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: tiwai@suse.de
Subject: [PATCH 0/1] firewire: fix memory leak for payload of request
 subaction to IEC 61883-1 FCP region
Date: Tue, 17 Jan 2023 18:06:09 +0900
Message-Id: <20230117090610.93792-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, This single patch fixes a bug of Linux FireWire subsystem
 for kernel v2.6.33 or later. In detail,
 please refer patch comment. My intension
 of this cover-letter is to request sound subsystem maintainer to send it
 to mainline since upstream of Linux FireWire subsystem is already inactive.
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.28 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.28 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1pHiE4-006bnL-IH
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
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

This single patch fixes a bug of Linux FireWire subsystem for kernel
v2.6.33 or later. In detail, please refer patch comment.

My intension of this cover-letter is to request sound subsystem maintainer
to send it to mainline since upstream of Linux FireWire subsystem is
already inactive.

To Iwai-san, I would be pleased if you alternatively send it to mainline.


Thanks

Takashi Sakamoto (1):
  firewire: fix memory leak for payload of request subaction to IEC
    61883-1 FCP region

 drivers/firewire/core-cdev.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

-- 
2.37.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
