Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6181B6E9914
	for <lists+linux1394-devel@lfdr.de>; Thu, 20 Apr 2023 18:05:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1ppWm7-00066N-QI;
	Thu, 20 Apr 2023 16:04:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1ppWm5-00066E-VB
 for linux1394-devel@lists.sourceforge.net;
 Thu, 20 Apr 2023 16:04:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WnqW5lTsFmOJoys1Yjhzu2IcedZK/KQuMl4HGgkfhP8=; b=m7R2B9+joqme88nEhz3Q9A0IjJ
 DN3FPGzrQGDOIzfYt+R6qOwsU48uTPlibmQdbfImfRKJZJyMFZCcgieoEwWyYLPLjgTTnlwELCS/f
 kHqNvg0pgC6A8yEV1urLUjv5Yn/MtWiW1CnAf6irHU+6bcU2QmY9hO6AsXhKWGeqAdYM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WnqW5lTsFmOJoys1Yjhzu2IcedZK/KQuMl4HGgkfhP8=; b=mRdHfYTc+jwKtQzdliEZXkEc/T
 nvV6cev3OMOcmF59KIFEVe9VClubVJGfYBp5cYG6S5NulVw1yL7VFa6E17Yr0Iu3X6ClRMyaIduC3
 7CKH7TdFFutmt6coHhwaynf1oB7rQtNW+2zFuYa9Qms2yFQ7YbGJTl3NmYpwtWFQdxaQ=;
Received: from wout1-smtp.messagingengine.com ([64.147.123.24])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ppWlv-0004mX-Go for linux1394-devel@lists.sourceforge.net;
 Thu, 20 Apr 2023 16:04:44 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.west.internal (Postfix) with ESMTP id 03449320090A;
 Thu, 20 Apr 2023 12:04:25 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Thu, 20 Apr 2023 12:04:26 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm3; t=1682006665; x=
 1682093065; bh=WnqW5lTsFmOJoys1Yjhzu2IcedZK/KQuMl4HGgkfhP8=; b=j
 MBtxGeYDg+UMn9mJmBHmd64W8PKfgu/LIFXt62pel8zLPOc05U+22AxD+X5X6KnX
 kBGGskqepP9QFkNr7mqaqe941VwSUc4idN4aFOj1TcOtlKyl+nZjlOctLPAo4Ja6
 B9mnQooFKF/3nXh+0m4wyNZhx4+tnHyRz5/HK5osgav6CqBBLTC2ymo0HE2+1EK4
 d9PWoHgfGpRtyqgnYwQywFpbCzazV9NXFjSSBNqCI4rt8zsDJOgxVgx/uEArulb9
 gNOc0NyVBQ1P2Y9kP0BoFMy0RZKRgiBgGNNlTTzXi4BRnmZNB0dBbbGxVI/2qQgi
 yQV4PSXIUZSSgh0dmdIJQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm3; t=1682006665; x=1682093065; bh=WnqW5lTsFmOJo
 ys1Yjhzu2IcedZK/KQuMl4HGgkfhP8=; b=amVXc/ua87R0bB/6BxRHBl1JwcL95
 d/6vAATBNJxTWwa/m1BxU/eKdRrLOTPQ+0VRvs7jTNW6Jje1BZX/sCfBM3+rryMS
 hV5g3/ctW0JkVJJAa0Yo/cUGN/G84tRi3RdU6zZxJ929SPfca6VXufL0FuIzpCp1
 wX/4SeVLR0afzUZAUKdRgKS63HLjQ/FipwqypU7lm6BuOIrJOOJhgIxQxyHdsNhL
 j6bAPXaYdOnpkCa2l5lE4NypHZc0TPmbB63YljxZgT+dlsat2BSKF/ON7Q62kKsu
 0J/qHE5cWUOuKE5wZDR8llnZgA9E1uSGiVS2R/0TLsku6Y1hF0dufmimQ==
X-ME-Sender: <xms:iGJBZE_ryf6SvFLyMXxA7rhXRl2VCh69FFRejz3z6tPSj6eYKg1n6w>
 <xme:iGJBZMtGLJwIIfAT3mgz25_SqUwQmGF0H-7c1C0KwK4b8bqWWsTd1nwmoKnxZGEYW
 1cZhENhsjoOB8voxSE>
X-ME-Received: <xmr:iGJBZKDe-Iq3L3cTj0tNv7ma0ORBbOq0eVglspzGwFp-KKYuEdarqdQoa7iZBSkE_oUnM9-buk2VWVkOlhdRkxBWb8CF>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfedtvddgleehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepvfgrkhgr
 shhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhird
 hjpheqnecuggftrfgrthhtvghrnhepveeilefhudekffehkeffudduvedvfeduleelfeeg
 ieeljeehjeeuvdeghfetvedvnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlh
 hushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:iGJBZEf2XQTK03ZAlA0nU5ph50UWiAcfgJKoa7nitGlJEv8-iIqQ6A>
 <xmx:iGJBZJNq_R4E4zJyXZEVGr9LNV78sZ1cCivM00B8da1s1P4nRaL-_A>
 <xmx:iGJBZOkOERo4lJBePr8r0Q0PCZaDtE_E1-Lshax0C5XcruEq1eZKPQ>
 <xmx:iWJBZKoIy7hkhJXjvBc-o72Ki26OxCJXvaQrsPrKN7P7HanWXMfdNw>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 20 Apr 2023 12:04:22 -0400 (EDT)
Date: Fri, 21 Apr 2023 01:04:19 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Randy Dunlap <rdunlap@infradead.org>
Subject: Re: [PATCH v3] firewire: init_ohci1394_dma: use correct function
 names in comments
Message-ID: <20230420160419.GC33275@workstation>
Mail-Followup-To: Randy Dunlap <rdunlap@infradead.org>,
 linux-kernel@vger.kernel.org,
 Stefan Richter <stefanr@s5r6.in-berlin.de>,
 linux1394-devel@lists.sourceforge.net,
 Andrew Morton <akpm@linux-foundation.org>
References: <20230410011306.26268-1-rdunlap@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230410011306.26268-1-rdunlap@infradead.org>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun, Apr 09, 2023 at 06:13:06PM -0700, Randy Dunlap wrote:
 > Prevent kernel-doc complaints by using the correct function names in >
 kernel-doc comments: > > drivers/firewire/init_ohci1394_dma.c:258 [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [64.147.123.24 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1ppWlv-0004mX-Go
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
Cc: Andrew Morton <akpm@linux-foundation.org>,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Sun, Apr 09, 2023 at 06:13:06PM -0700, Randy Dunlap wrote:
> Prevent kernel-doc complaints by using the correct function names in
> kernel-doc comments:
> 
> drivers/firewire/init_ohci1394_dma.c:258: warning: expecting prototype for debug_init_ohci1394_dma(). Prototype was for init_ohci1394_dma_on_all_controllers() instead
> drivers/firewire/init_ohci1394_dma.c:289: warning: expecting prototype for setup_init_ohci1394_early(). Prototype was for setup_ohci1394_dma() instead
> 
> Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
> Cc: Stefan Richter <stefanr@s5r6.in-berlin.de>
> Cc: linux1394-devel@lists.sourceforge.net
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: Takashi Sakamoto <o-takashi@sakamocchi.jp>
> ---
> v2: rebase/resend, add note to Andrew
> v3: add Takashi-san
> 
>  drivers/firewire/init_ohci1394_dma.c |    4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

The patch is applied to for-next branch for v6.4 kernel:

* https://git.kernel.org/pub/scm/linux/kernel/git/ieee1394/linux1394.git/

You can see the patch in linux-next integration as well.


Thanks for your patience

Takashi Sakamoto



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
