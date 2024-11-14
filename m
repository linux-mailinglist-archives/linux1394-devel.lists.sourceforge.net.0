Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A1F29C7F5C
	for <lists+linux1394-devel@lfdr.de>; Thu, 14 Nov 2024 01:28:21 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1tBNiK-0004Iv-Pg;
	Thu, 14 Nov 2024 00:28:00 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1tBNiI-0004Il-KG
 for linux1394-devel@lists.sourceforge.net;
 Thu, 14 Nov 2024 00:27:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qurnviOz4iZ//bLPRY+g/wbA0w66JcS3XG3CD6yYHqk=; b=hBEfe7EzQFlrci3J/zI+TR3b/c
 ULysbjh8YYvvSnS0tZvj/HXvMd97exEGo8Jx/GYY/wWKXetZHG9Vh1hk6TmofBibWcPUACQxlhyXS
 aabwpkql2k+k8VXZJlcC7pRgLPuSHa9TVOdU1lYHAoDGZkqYkwApdRjSQYdVMVIXm9aQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qurnviOz4iZ//bLPRY+g/wbA0w66JcS3XG3CD6yYHqk=; b=FIY6EO4+kqea4QWsCOOzGv3LB9
 c62mFozLeoLA87Yhns6G/WsxHucC14lTMypypw4djI0xbKLEiGZ6MvtK94kQiCWG2g1hdQpCz+b3O
 dsGZYjop15el7lHFzl7n68YuoqW9haSOigqrdkAAadmYe0PG2cTokqa+YbpS7dVBr2iw=;
Received: from fout-a6-smtp.messagingengine.com ([103.168.172.149])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tBNiH-00014I-1i for linux1394-devel@lists.sourceforge.net;
 Thu, 14 Nov 2024 00:27:58 +0000
Received: from phl-compute-11.internal (phl-compute-11.phl.internal
 [10.202.2.51])
 by mailfout.phl.internal (Postfix) with ESMTP id 37B0A138020B;
 Wed, 13 Nov 2024 19:27:51 -0500 (EST)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-11.internal (MEProxy); Wed, 13 Nov 2024 19:27:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1731544071; x=
 1731630471; bh=qurnviOz4iZ//bLPRY+g/wbA0w66JcS3XG3CD6yYHqk=; b=f
 JGPx+qAuvDJnWuUQTj+JqMhDfiO+nebiJEA/rZWL/AR8czFO1NUIrc+TXdo1icUV
 p+6drA28tb3VGde5fxow8VI0Razpv3dnjIbKnBg+aieBU+I1IfZYENgbniiu9ZM/
 6UigsGz1v54QaJzuMz1xJGvC3A2aLQXQfs69KBqv+CiL0KIVTqLXh1SLo4HUQq50
 UAtdJngS9CTx/AaQg5lhuhdomIRe2XlNhXk7GkOY0FBbk/UVnj/PULVXMebJU7yD
 vahV7M0YfkLG4P1bulrzKQIEoDyLQDAQZWR52K9m+Lg3nHOkmBXUyXb11UXoD636
 K6uhTDjJxwb9giSiHAulQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
 1731544071; x=1731630471; bh=qurnviOz4iZ//bLPRY+g/wbA0w66JcS3XG3
 CD6yYHqk=; b=oaXfLiIaCUj2RRYiCWAvjColpFwlwz1lUWBjhzaIQMgWBdF6eh0
 WDwvvuDLrw1MOUCATpIQtgOHRvHs+rHmNolA/6e5BVI6IFGyWP1H9rB8fT3O0NU5
 O01NeA8MH5g0p3Hn2PoN/Nrul4PCyWQ61ylwQ9ns9PmjHIB8ECckSV7ldiLLs3bw
 54bQnY1JSR8wKQ4h0sYAnymlHocLMvX34PoylrtpeLcNEmvuEzZllYpt3NW+sirp
 G7ghsRGrctDuzj37EkdH9P6x/oKANhCs0wNqeGi6MXGCbukx4drz2SbeUGj8mfmO
 ux6vLtR3ri7g3az9XOhPB7oZSKv2TO7lWHA==
X-ME-Sender: <xms:BkQ1Z6d4urNQ3UqXqJi0v3ratbVBxYLJCcMzHYHfDAp8Ys0vcHs4oA>
 <xme:BkQ1Z0OFtWKuIkOOg35lF-26EcORrKQTkVP_bC_Nhgv9si2Mhp8_gp15xBOKpx_wt
 aQ0ARcH5FhXyX0BpLo>
X-ME-Received: <xmr:BkQ1Z7hHKAivgQDh_wYOC4elvJj2-3PdLyclxOqCCH0leXXZ7_1UiPkdQrQ_wiSYQLIKb_OY4a0hn7qQpy4Cr7_l7VAioCOngA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefuddrvddugddvvdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdpuffr
 tefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnth
 hsucdlqddutddtmdenucfjughrpeffhffvvefukfhfgggtuggjsehttdertddttddvnecu
 hfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghshhhisehsrg
 hkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeehhffhteetgfekvdeiueff
 veevueeftdelhfejieeitedvleeftdfgfeeuudekueenucevlhhushhtvghrufhiiigvpe
 dtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgt
 tghhihdrjhhppdhnsggprhgtphhtthhopeefpdhmohguvgepshhmthhpohhuthdprhgtph
 htthhopehluhhohihifhgrnhestghmshhsrdgthhhinhgrmhhosghilhgvrdgtohhmpdhr
 tghpthhtoheplhhinhhugidufeelgedquggvvhgvlheslhhishhtshdrshhouhhrtggvfh
 horhhgvgdrnhgvthdprhgtphhtthhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghrrdhk
 vghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:BkQ1Z39FGZz0ifwxUG1HnLM5UNhQg4-DpTegcJTv7qFm8nLJcYhCbQ>
 <xmx:BkQ1Z2t1ippgK2GmX4VrdgvzyoJwFwOlrv0oy9YTGu2-89vKcLg3JQ>
 <xmx:BkQ1Z-G8_Lu-PU08tj-lqhaLCeClURKTvW0HkAtX4a71MbCssI4chw>
 <xmx:BkQ1Z1MjWMzwPbDolSOfJWXNSVSRD2H_R51cNJ8CEIqWLNWoyR902g>
 <xmx:B0Q1Z6J9ESanJSh5eIN_R5ER2Biz3GmFkHtftSP0JCCD2vML_Hi-SNvy>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 13 Nov 2024 19:27:48 -0500 (EST)
Date: Thu, 14 Nov 2024 09:27:44 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Luo Yifan <luoyifan@cmss.chinamobile.com>
Subject: Re: [PATCH] tools/firewire: Fix several incorrect format specifiers
Message-ID: <20241114002744.GA22321@workstation.local>
Mail-Followup-To: Luo Yifan <luoyifan@cmss.chinamobile.com>,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
References: <20241113023137.291661-1-luoyifan@cmss.chinamobile.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241113023137.291661-1-luoyifan@cmss.chinamobile.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Nov 13, 2024 at 10:31:37AM +0800, Luo Yifan wrote:
 > Make a minor change to eliminate static checker warnings. Fix several >
 incorrect format specifiers that misused signed and unsigned versio [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.149 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.149 listed in bl.score.senderscore.com]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.149 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1tBNiH-00014I-1i
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
Cc: linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Wed, Nov 13, 2024 at 10:31:37AM +0800, Luo Yifan wrote:
> Make a minor change to eliminate static checker warnings. Fix several
> incorrect format specifiers that misused signed and unsigned versions.
> 
> Signed-off-by: Luo Yifan <luoyifan@cmss.chinamobile.com>
> ---
>  tools/firewire/decode-fcp.c | 2 +-
>  tools/firewire/nosy-dump.c  | 6 +++---
>  2 files changed, 4 insertions(+), 4 deletions(-)

Applied to for-next branch.

Thanks


Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
