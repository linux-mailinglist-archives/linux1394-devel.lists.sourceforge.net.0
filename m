Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AB23755057E
	for <lists+linux1394-devel@lfdr.de>; Sat, 18 Jun 2022 16:28:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1o2ZRC-0001HO-Sz; Sat, 18 Jun 2022 14:28:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1o2ZR7-0001Gh-Gk
 for linux1394-devel@lists.sourceforge.net; Sat, 18 Jun 2022 14:28:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hamukNw3fi1kUaS5rGLtWuHYKMWkisqbqPPUzLN+YUg=; b=FPuKfpR4A4WYgwWRpptKr9Pq5U
 vry2EMLSmMkjPBcmxhT6hCW/zynQUxq52NU0bFGjrfBXQIhzSoL0ruBsyyKqXPF10cnSKrX3TLRcW
 /a6uR2fi8NVPqI3GHR3ykgV6e7sHkYR7sid3J9zkiLh6hr35H1rDncBp7On2ZKcMnV50=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hamukNw3fi1kUaS5rGLtWuHYKMWkisqbqPPUzLN+YUg=; b=XJ+FC1E3M949IlkPmem57pelni
 PPXKAfYZLhd45Aa88cUHFkVYyksHO1uR5eLVQjTPsikpUO+N5JLRt2GSvHFtt9YcC/DY6YXhbDME7
 zD+hgnG7P6CxpmckBQ0TSbEZRTIy+2CjEDLbN3JLI2EgeIo0u2x4W6LEJuwLzHPBq9fA=;
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o2ZR0-0007X8-G3
 for linux1394-devel@lists.sourceforge.net; Sat, 18 Jun 2022 14:28:30 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 787225C00DA;
 Sat, 18 Jun 2022 10:28:15 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Sat, 18 Jun 2022 10:28:15 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:sender
 :subject:subject:to:to; s=fm2; t=1655562495; x=1655648895; bh=ha
 mukNw3fi1kUaS5rGLtWuHYKMWkisqbqPPUzLN+YUg=; b=tJPLGEOKVpRrVZaqBV
 pTr62ll0MsUZW3XOLK3EqIOKrbYZfE1dKYdpqkROLzxGAFopRBVT2pZax73ejn5W
 6xAG/uRnLwTOIaJILqKJTa2aKAoS2s+rzr6utd5hLyr3AQkJPYuFUL802DoiMdAX
 UCOEI7Mhg+eRICF4865hxglc/9GgspIQarE7iEkWw+pLdmngmU4IIPzwt2BKKFTG
 m+Uo1z76qFd5inKPJr4tPCUL1TWqdKVQnoNKfOHHHdYcgp/oenbaSOXz3IlwLQEq
 J5uQjEH/0CbgfYPkqjkWf7ncycCi73F+iknqIkqZ26C4mUaSuGXqP0EQI7rpBMcv
 hrkw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
 :feedback-id:from:from:in-reply-to:in-reply-to:message-id
 :mime-version:references:reply-to:sender:subject:subject:to:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1655562495; x=1655648895; bh=hamukNw3fi1kUaS5rGLtWuHYKMWk
 isqbqPPUzLN+YUg=; b=O2vR5/2gEf+nXU98qbqb0pCrro3vChrz7753iCDDwEMM
 /9g//FbA3rLNKGYP9bI7pJOyIVTlq3I0gMVU/mfFGc4LkIaJr2pC5+BBuriSOXVa
 xr29WQYrg0Kt1VcnjgQ7Wc/J2LN/ji31BClMKgnvAnc2G1wAza+LUotBlAuOpkHD
 Rbj7AtshC/MyDwNAfjsCSOHGN8bpjgju2fAjiFvHOYKf2xxbFtEhLeqBrWvnLG/W
 cmHUjCaqtz5TBd2QiTdhBjJBAmcq5M5ePveY6C1u2wso6dxkdQ29t44/eTo9T4ax
 VRX2ovj/HiS8XTmIMDWX3vhI/UfjDxMuOJWyjI/rqg==
X-ME-Sender: <xms:_uCtYg1mI5UntK8WEBj9T_Xsk2IN3KjhQMYixjw-FlstVF0qMkN-zw>
 <xme:_uCtYrE9tO8cZ5iiLyjbLZwwolHPgC5D9Xa4DgB02Iyty4W5s4bn2_xYfmt8P2cf6
 8-O4BpBwY3zJXgUleg>
X-ME-Received: <xmr:_uCtYo6it1Nc7OPD49LyL_1hnirMye6ZhVcZqLQiptAuW8segcX9CE6bV1X_6e-bCVBmKcZwneuOb-ZpZcHXlrJTIJ5y9GhW>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedruddvjedgjeelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepvfgrkhgr
 shhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhird
 hjpheqnecuggftrfgrthhtvghrnhephefhhfettefgkedvieeuffevveeufedtlefhjeei
 ieetvdelfedtgfefuedukeeunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpe
 hmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:_uCtYp02B-U8lmXF84FGBYk1zPjtD4CuzNc6luxnXK54eWFZjzzqmA>
 <xmx:_uCtYjETI7rdQ7qZ8ldqzDKZ6XUQCeyY0s4FohLp4bwjPr0jDz0ZvA>
 <xmx:_uCtYi_OP3Qo1JNpiEIUksq21YzSefTLnbbCtsNI-z5mcJPjydt7CA>
 <xmx:_-CtYoT1ULnK8514IPW-Q7x33duyZj3DD9JFqsh05gYU35KfgVF-ow>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 18 Jun 2022 10:28:13 -0400 (EDT)
Date: Sat, 18 Jun 2022 23:28:11 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Takashi Iwai <tiwai@suse.de>
Subject: Re: [PATCH v2 0/3] firewire: fix minor issues
Message-ID: <Yq3g+6+x+S0aKv8e@workstation>
Mail-Followup-To: Takashi Iwai <tiwai@suse.de>, stefanr@s5r6.in-berlin.de,
 alsa-devel@alsa-project.org, linux1394-devel@lists.sourceforge.net
References: <20220615121505.61412-1-o-takashi@sakamocchi.jp>
 <Yqp3lvOYHwZyC0I5@workstation> <87zgib1y0k.wl-tiwai@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87zgib1y0k.wl-tiwai@suse.de>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Fri, Jun 17, 2022 at 10:42:51AM +0200, Takashi Iwai
 wrote: > On Thu, 16 Jun 2022 02:21:42 +0200, > Takashi Sakamoto wrote: >
 > > > Hi, > > > > I realized that the second patch still includes a bug [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.28 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1o2ZR0-0007X8-G3
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
Cc: alsa-devel@alsa-project.org, linux1394-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

On Fri, Jun 17, 2022 at 10:42:51AM +0200, Takashi Iwai wrote:
> On Thu, 16 Jun 2022 02:21:42 +0200,
> Takashi Sakamoto wrote:
> > 
> > Hi,
> > 
> > I realized that the second patch still includes a bug that shorter
> > buffer is allocated for block request than received length since the
> > computation is aligned to 4 without care of remainder.
> > 
> > Actually in the case of block request, the length is not necessarily
> > multiples of 4 and the packet payload has enough size of field with
> > padding to be aligned to 4, according to 1394 OHCI specification. In the
> > implementation of firewire-core driver, the field is copied without
> > the padding.
> > 
> > Please abandon them. I'm sorry to trouble you.
> 
> So this implies that the type declaration of data[] rather looks
> wrong?

Your great insight.

Indeed, I can not find any code to dereference the array for u32
element. In all of cases, the 'struct fw_request.data' is passed losing
its pointer type (void *), then copied by the length in byte count. At
least, I can not find any warning or error at compiling the driver after
replacing the 'u32 []' with 'u8 []'.

Even if it were dereferenced, accessing over allocation boundary hardly
occurred since typical implementation of slab allocator maintains various
sizes of memory objects but multiples of 4.

It's possible to declare it with byte array, I think.


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
