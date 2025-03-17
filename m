Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 514EEA64DDB
	for <lists+linux1394-devel@lfdr.de>; Mon, 17 Mar 2025 13:06:15 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1tu9EG-0006QH-WB;
	Mon, 17 Mar 2025 12:06:01 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1tu9EE-0006Pv-Jh
 for linux1394-devel@lists.sourceforge.net;
 Mon, 17 Mar 2025 12:05:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VlE2aCu2dxScBu+S/YF4VoV7bWcPS836pUf9gH4Te88=; b=eGMkyejNPOjg04FkHnZCxypPSK
 ZDqAfzAc/JImmRBb2N6HCEQZQbBTjb1is9O1skreQiqbvGQyxnZBHg7+c+jA2R+KujWamjc30Zcni
 i6zLhhAJgSe8SIsn6O88Ic/0BXJrg6wlAahE2WY2x21qn4CYaKOzRAcdnDdePv+Oa69Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VlE2aCu2dxScBu+S/YF4VoV7bWcPS836pUf9gH4Te88=; b=fl8mlldOIvaQnaqns6Tcur2UHN
 88Lt4eVQeyzqI90Z8hRnclNfWbu3fV/T0gMXsgYJB2Tpfuqz8N5t0FbLooMbIl0TiijqGMkjYbmpU
 pgJIIyf42vv3abCxxYvZk3dvsib/Nvz9/VjiD2yMoQ2xosew/Njv0MKeSsUtpnpDG8R0=;
Received: from fout-a2-smtp.messagingengine.com ([103.168.172.145])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tu9ED-0001Gh-KP for linux1394-devel@lists.sourceforge.net;
 Mon, 17 Mar 2025 12:05:59 +0000
Received: from phl-compute-02.internal (phl-compute-02.phl.internal
 [10.202.2.42])
 by mailfout.phl.internal (Postfix) with ESMTP id F370A1382CE9;
 Mon, 17 Mar 2025 08:05:46 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-02.internal (MEProxy); Mon, 17 Mar 2025 08:05:46 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1742213146; x=
 1742299546; bh=VlE2aCu2dxScBu+S/YF4VoV7bWcPS836pUf9gH4Te88=; b=C
 oAHs0q+RRJPO2YWgoZosSIfMyU4Qso45A2junUU37g8fKEat5bmbiPEi5+H/7paz
 seE18t77/FVuVnaPcVGCORp5Tjz6ZQ67jM4iC7VnEpNG0iNinBOTkklvsw/4+LnS
 2jHcIlRSMQ0Rs6w7KM3eL90qqSKEx961m/KmzFwViJJZwjwMxJ2x9Anv2qNaFkMx
 XVc/KZwEhAncC5wzDJdmOX/1DisWr4nbcEBv+qTxvr3YSc9HyCo6fICsamVIkXN1
 3BZbBe5JDOW6hBWYRdYOztWWaPPmEoZmcWCTSxdVBYbIV2j9aAB+sz7tGryNSaDY
 WN1WVnFXOKeWpivw98xIw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1742213146; x=1742299546; bh=VlE2aCu2dxScBu+S/YF4VoV7bWcPS836pUf
 9gH4Te88=; b=w61/GzQk9h/ygcwh/I4B076fiEoJhQYMfcmWTglEeHPBgIeG4t/
 6+Vt1z/BIvCzu2/0iIYgtdruQvP+++z2zZeKMuWVceG/0Dxr300JeXfVv+7gNYMb
 JOwSnXJR9u+mQ3s/tQjDWC6mKRqmQ3YYE2qsy1CiFMjxFZOd4QlUlBasNBGI+Lam
 sumEoxR6vQRJWAZrLEVZhULyso5MRi9cnWE0gd3pKh43iPDqY1mLNDz2yFIwJXBC
 oBzVseoEf4d4pqQDTI8fXNdnOis84Ziny4QjfRrhPtdVu6i/whl/NkfRdJ2pkIuq
 07qE4lFOxbieSYiB9KibINWAKMySVI72SEA==
X-ME-Sender: <xms:GhDYZzEz6KbBo2txi4gEEm-oi1L83slCf8ZWsWX2rInvgLZfYCt_fQ>
 <xme:GhDYZwXu_aXHgvxHHhNhp7092YAUFI9rWKZmWNqD7UPYHED_wcaNyIqgVPWQy-Gij
 f-nxxkKBC7gjoLohGA>
X-ME-Received: <xmr:GhDYZ1Iu84qeOpULqdsU13vqzHDOTMl_Nh4-pDM5WfeS04CtenZhz2Y4HLItooOOOOWMc3VLIlvLnThQpV7IR3nan_zfGRZ0Dcc>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddufeelgeeiucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggv
 pdfurfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpeffhf
 fvvefukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefvrghkrghshhhiucfurghk
 rghmohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtf
 frrghtthgvrhhnpeevieelhfdukeffheekffduudevvdefudelleefgeeileejheejuedv
 gefhteevvdenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuih
 iivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgr
 mhhotggthhhirdhjphdpnhgspghrtghpthhtohepgedpmhhouggvpehsmhhtphhouhhtpd
 hrtghpthhtohepghhushhtrghvohgrrhhssehkvghrnhgvlhdrohhrghdprhgtphhtthho
 pehlihhnuhigudefleegqdguvghvvghlsehlihhsthhsrdhsohhurhgtvghfohhrghgvrd
 hnvghtpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghl
 rdhorhhgpdhrtghpthhtoheplhhinhhugidqhhgrrhguvghnihhnghesvhhgvghrrdhkvg
 hrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:GhDYZxHRo7nWHO_ukohRWpNe9goED6A_0_2RFXs8wGPGcRKSGH4BEQ>
 <xmx:GhDYZ5UOhe7d7I675IjzPb7yU8RfyfFKQWDNvBk1YyZHKZ2CsA9iKg>
 <xmx:GhDYZ8OvA0JAxqvNUPjXF-awDYfEPWG25GHbZssFVB_B9cLImSeUHw>
 <xmx:GhDYZ42Z3P-y2Hu2Q4Gn-mIKUwi5fUyMJ2WkvGl65dQlK6NFtDFEgw>
 <xmx:GhDYZ_zsIBjfWHvqkvV3sRoPwSBb3nlzXy3ZHlaGbjDsxKlVCGhC-MjQ>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 17 Mar 2025 08:05:45 -0400 (EDT)
Date: Mon, 17 Mar 2025 21:05:41 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Subject: Re: [PATCH v2][next] firewire: core: avoid
 -Wflex-array-member-not-at-end warning
Message-ID: <20250317120541.GA6070@workstation.local>
Mail-Followup-To: "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 linux-hardening@vger.kernel.org
References: <Z9NcB81yfPo-8o0h@kspp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Z9NcB81yfPo-8o0h@kspp>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Fri, Mar 14, 2025 at 08:58:23AM +1030, Gustavo A. R.
 Silva wrote: > Use the `DEFINE_RAW_FLEX()` helper for an on-stack definition
 of > a flexible structure where the size of the flexible-array memb [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.145 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.145 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.145 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [103.168.172.145 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1tu9ED-0001Gh-KP
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
Cc: linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

On Fri, Mar 14, 2025 at 08:58:23AM +1030, Gustavo A. R. Silva wrote:
> Use the `DEFINE_RAW_FLEX()` helper for an on-stack definition of
> a flexible structure where the size of the flexible-array member
> is known at compile-time, and refactor the rest of the code,
> accordingly.
> 
> So, with these changes, fix the following warning:
> 
> drivers/firewire/core-cdev.c:1141:38: warning: structure containing a flexible array member is not at the end of another structure [-Wflex-array-member-not-at-end]
> 
> Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
> ---
> Changes in v2:
>  - Adjust COUNT argument for DEFINE_RAW_FLEX() to 64. (Takashi)
> 
> v1:
>  - Link: https://lore.kernel.org/linux-hardening/Z9AA9tAbcIcz6BMO@kspp/
> 
>  drivers/firewire/core-cdev.c | 42 ++++++++++++++++--------------------
>  1 file changed, 19 insertions(+), 23 deletions(-)

Applied to for-next branch.


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
