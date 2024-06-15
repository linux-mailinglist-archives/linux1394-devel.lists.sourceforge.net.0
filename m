Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A61190963E
	for <lists+linux1394-devel@lfdr.de>; Sat, 15 Jun 2024 08:02:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sIMUf-0003bG-9R;
	Sat, 15 Jun 2024 06:02:29 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sIMUd-0003b2-Sj
 for linux1394-devel@lists.sourceforge.net;
 Sat, 15 Jun 2024 06:02:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=r7u+yphojA5kQs7Ft+k2Ma46p5tLGD9X4713KwZnndE=; b=R8c8M7IC+YTiJ8vpPFtUQz7eqB
 Hg0LqIwzFbBxIVEgPS3+tIvWNh8Z5Fy08w+G8Mt8oA7MHS+vu3yFfwlmGCY+T/xfJPN/skV2qiKAS
 6VdRBa1iHlGG1ATIPRRKh8M5wepjG8i4tdyMLvdUQ2jZOQdIvZWhs+EUOge8SS7e7p/g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=r7u+yphojA5kQs7Ft+k2Ma46p5tLGD9X4713KwZnndE=; b=S4zDJePAwWJ/XbOHNrd3a8xm3S
 I2uDzY5ZbeOa+Sno97+n6Z98heGu6VC3HUoOldYIDpmK7iIBO2RtZ5nIyJ2qRmDfJyOkbCbUU9dPS
 VFVsQs7HToA6BaYwOrxGVVfOLK3EdDDLYk9fgr6jTyLKxP4jJLpJJQkBkuCxxcoNjh7U=;
Received: from fout8-smtp.messagingengine.com ([103.168.172.151])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sIMUd-0002DD-8l for linux1394-devel@lists.sourceforge.net;
 Sat, 15 Jun 2024 06:02:27 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailfout.nyi.internal (Postfix) with ESMTP id EB213138030F;
 Sat, 15 Jun 2024 02:02:20 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Sat, 15 Jun 2024 02:02:20 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1718431340; x=
 1718517740; bh=r7u+yphojA5kQs7Ft+k2Ma46p5tLGD9X4713KwZnndE=; b=K
 MWA1yogYJgubr4q0sND52lywEbAwM8G4CnzXMOTSpfDofQ/zzYiQNAKZZrIP16lJ
 ddHnsNaFOC+7nZPzIL9GcpSsWWxQ2xWRhejQCvaydI79wFQoxlu3E1niuo0lSZvG
 aOnZd8k55QeTSsp5/MOQ5P1FafhqvPWKCa8753kQ7cRr3b3WYG4jcim+f/1YqReR
 1I+q9OTX5FcZV9Dn6PXqpUxF910wdTXsRURsQ8gucGvqBfnRspt+n2shdywdrgc0
 R1Su6K2zfN77KLywoyCEV1yyarCGXqG34/vIU+Zrzx3aLILPbw9CXZRfLIkrYsB9
 07SV2EWws5jKhNEJjmnPA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; t=1718431340; x=1718517740; bh=r7u+yphojA5kQs7Ft+k2Ma46p5tL
 GD9X4713KwZnndE=; b=QDVoPb1CDVO8Xzqwi+OJn/2ca2k+6zBlvgV2jDCeaRs+
 tyYY4op9BlTX4WauS55A/1k0seS23sHoLCtXSv5QNPpzkPH7TCwl6XwsKDnBzfPw
 NUxwepqHy8zADQXAu1NlPVr9B5JjccznBC5Ad2L4e2yVV89fTQHjwXk7V3zz880J
 76H5J8T7K+Yu+eNYlsljSUBFh2OXlL9xViChj1ws2sh+C6nwySuNl35em3MMKwZd
 fvZhPoE5/NEflYh8qK1gp7GuoI0SvT2BGiqFzZnvI5ahqYe7FLLSE1ZdX1cPv9KN
 4Wdl09/QegUP+3p3VftUjHU7fZNY91hAm+b3IM17QA==
X-ME-Sender: <xms:bC5tZhvqbPm-y-_0mkGAGVvksuU8DWC5mYkDEiuiIstePdt7hXau0Q>
 <xme:bC5tZqcLjpBuDd3yV3Q3lPCRYsoSUSj2388WKgC68DwHozDpJYJUtV4wNAyV967y9
 IaklAcsWoLkTnP60ps>
X-ME-Received: <xmr:bC5tZkxYR7IW7Ny16i4iBMMhhiGPHK12PCZRq8EURYEeM1A2ojBPp0P7vh5zD1tsjeOhTu-PDBO8ua32K1vhnIswoa1kN8lSe82c>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrfedvtddguddttdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvfevuffkfhggtggujgesth
 dtredttddtvdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgr
 khgrshhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepveeile
 fhudekffehkeffudduvedvfeduleelfeegieeljeehjeeuvdeghfetvedvnecuffhomhgr
 ihhnpehkvghrnhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmh
 epmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:bC5tZoNMqJQvvIDlgu_qjsKm3NSaX2KJ3h6BERdWygC128T8M7ztfQ>
 <xmx:bC5tZh8Kbt-NSuoXNApxAbzBM0hdwjD4qD6W1VCMcVPjVh4C772Txg>
 <xmx:bC5tZoXFbLbBLCQmG0RJC6NOO7DbvRlyhrSNs_d30WC0MF6JbtD6eA>
 <xmx:bC5tZicp_0Rg0qZjp-rosKFhQT-chMQwt0ne8BG8WAdpCeT1378k-w>
 <xmx:bC5tZjKcvpmufdQxRafDlVPrk2G9_MvBz4uFQIbowOhbw_0AI7EPFMjT>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 15 Jun 2024 02:02:19 -0400 (EDT)
Date: Sat, 15 Jun 2024 15:02:17 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH] firewire: fix website URL in Kconfig
Message-ID: <20240615060217.GC497879@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20240613090343.416198-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240613090343.416198-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Jun 13, 2024 at 06:03:43PM +0900, Takashi Sakamoto
 wrote: > The wiki in kernel.org is no longer updated. This commit replaces
 the > website URL with the latest one. > > Signed-off-by: Takashi [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.151 listed in sa-trusted.bondedsender.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.151 listed in bl.score.senderscore.com]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sIMUd-0002DD-8l
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
Cc: linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Thu, Jun 13, 2024 at 06:03:43PM +0900, Takashi Sakamoto wrote:
> The wiki in kernel.org is no longer updated. This commit replaces the
> website URL with the latest one.
> 
> Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
> ---
>  drivers/firewire/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied to for-linus branch.


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
