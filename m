Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EAE16B8BD21
	for <lists+linux1394-devel@lfdr.de>; Sat, 20 Sep 2025 03:54:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fspKXGCJnG6fXQyYEdmAqOyBGEk/8jByeEm/R6XebY0=; b=OGYyVud8NhAVt2EjeabtIQCQci
	4prWQ3ufbSYtH1eb8D4t6rnS7BA7uLt65q4xUnNxhkPsR+mPdc9aX3DBoYA20mgknvUrqYYkPnTnI
	huXEP6yTnGm8d8H27yxeHdI0K3kfJYW7xqiT1FGqaNdQv+jO6LMj93GCnHz7Ka1GwW78=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uzmo1-0005hP-Uz;
	Sat, 20 Sep 2025 01:54:29 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uzmnz-0005hG-QI
 for linux1394-devel@lists.sourceforge.net;
 Sat, 20 Sep 2025 01:54:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=m02STYeb81DNYyGDzqxnmWzmGa2H34wClLueodVTXS0=; b=gNNoR8lgA/N3q78tR/5p4R93Gn
 Z+8Cm0HFp94h6EhW8NXfbz/84iWwiZLDryLx30SCSFy4IbPL6E6oA6B1XlTDkE5jTDmJtGuPvoCrQ
 DETtkzy97tPnQZs+R28Uy8ccjAPHRHGqzLoMvZtkhbZB6AIz0jrOH095zYivINGKmNog=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=m02STYeb81DNYyGDzqxnmWzmGa2H34wClLueodVTXS0=; b=AwpxqQGeUHTmZ0yM5Ihi7UwzbF
 JHNQDdsW3Q1Z+9HO6nwmBrGDytgrNWRPwnpmuzoWTl3x7g7blyyht9gyRBrKtC3Xr5aZ94quQ9pdk
 a5tJqoXBMeRyWrQdyBYZmyn35rLku/CbQ9gmTyyj6DLJaMzRHIDxmHDlNajxqWBokzBs=;
Received: from fhigh-a4-smtp.messagingengine.com ([103.168.172.155])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uzmny-0000yG-GE for linux1394-devel@lists.sourceforge.net;
 Sat, 20 Sep 2025 01:54:27 +0000
Received: from phl-compute-02.internal (phl-compute-02.internal [10.202.2.42])
 by mailfhigh.phl.internal (Postfix) with ESMTP id DA99C1400179;
 Fri, 19 Sep 2025 21:54:15 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-02.internal (MEProxy); Fri, 19 Sep 2025 21:54:15 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1758333255; x=
 1758419655; bh=m02STYeb81DNYyGDzqxnmWzmGa2H34wClLueodVTXS0=; b=C
 MjMv6qkhKfq7QeulqRhFawcAuJrM33bg2j7mMM2xmRNgfywwa/003T8wZr6BipNG
 b4XnHIOSPHy3sqgzhz0r3bMqoHdJBJ+Oomr1WwDWwMFZbZ9pUqIMuVUXK5nxIOLW
 axBf16s/GG6T3EKL69qf15mAMovRb/93swqAm5MYKjRphqzEonLjthaDqXuaDBAv
 CYi5J8U0woLKMhS/e5Xb94sjqaXT76z51aIYYzzYEbpuiCrhp3dnpy7D3DXyBifF
 epdZ4rqV2RL5PCE5QZ3jSkdGbUZk8JBFNQE+P4wf6geglUfn8TSbM7Gz/MGmJCsx
 jlL/HYvYbNLakFljs+Kgw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1758333255; x=1758419655; bh=m02STYeb81DNYyGDzqxnmWzmGa2H34wClLu
 eodVTXS0=; b=B+2OHteRw0OBYag9Mtpv3V343ChK4H+gu9UVDQLLAE/hc0WZ1lv
 h8k0pfEL0+HHoQZE9BvZq5cHuZ1kT0pcGnTqvyinsfjdFARmXlHhBnZs1onbxIbW
 Jsp34YZ9RzEODKsAQoLVyZKEkqXpB0Oh/f2HaBxCXb3LZT5k2QMUkvs8urJLytkk
 k8z2S1Uwzys2UaGw3GfP5FAFdJSTggihj1IUXp6X8p2Ki32ZPK3+GC8bp9sOlkM2
 SRmOBWJ9NgjVwqVWsstAHIlrgsJbGzAO1Hpb/cjaplZ/Bxrx1xhX1/LdBI7FcYAO
 x87KLwQIb6wugox5YPxyHnjkWnkmO82SJWw==
X-ME-Sender: <xms:RwnOaNc0LMe4hRE7Oda7YIqKuA3bTXjPyu-iWinREO4GdYAQqTT06g>
 <xme:RwnOaPiUF0tQ7GgnfysAwNNTDC8alhH6ksbpPNyUXRcgP1NyuH_-7wN4axAxwLaUr
 jFJ9jLegSIy5vIvEmg>
X-ME-Received: <xmr:RwnOaFrwFWlKI1n9Pbo5m4MR8aR7rvklTzf-i99SQuih4l2h7hGWstC61FU2IllngMgzhUw91ER0dv0Eo6QIpix9oJVJcg7mEjE>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdehtdekvdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecunecujfgurhepfffhvfevuffkfhggtggujgesthdtredttd
 dtvdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepveeilefhudekff
 ehkeffudduvedvfeduleelfeegieeljeehjeeuvdeghfetvedvnecuffhomhgrihhnpehk
 vghrnhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrih
 hlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgt
 phhtthhopedvpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehlihhnuhigudefle
 egqdguvghvvghlsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthht
 oheplhhinhhugidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:RwnOaPEpEsUlmPq-ycCWre1arnrx-IqU2Y16AtS13S7Q57aTvZRg7Q>
 <xmx:RwnOaPlpFBcfJJaMmHKYqcD0Ilp--zGTkc8KU7-c0RDsPPVwjmXE1g>
 <xmx:RwnOaKlYPbNGiMBpg-fuRhXTxcQL0lLWtqQPFYt2jH6OblznIvLw6w>
 <xmx:RwnOaIsR9CIay6aG8jzvvpj-5PoeT5LXdvfc5YCRhWtKSKVD1ndrUA>
 <xmx:RwnOaJtAgBVZ-5DKhlqMqVxNGOhQkajbGCzLMiTs2-vjXAm-NDpe5NNz>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 19 Sep 2025 21:54:14 -0400 (EDT)
Date: Sat, 20 Sep 2025 10:54:11 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH v2 0/6] firewire: core: code refactoring for work item of
 bus manager
Message-ID: <20250920015411.GA155278@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20250918230857.127400-1-o-takashi@sakamocchi.jp>
 <20250918235448.129705-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250918235448.129705-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Sep 19, 2025 at 08:54:42AM +0900, Takashi Sakamoto
 wrote: > Hi, > > This patchset is the revised version of my previous one:
 > https://lore.kernel.org/lkml/20250918230857.127400-1-o-takashi@sa [...]
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1uzmny-0000yG-GE
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

On Fri, Sep 19, 2025 at 08:54:42AM +0900, Takashi Sakamoto wrote:
> Hi,
> 
> This patchset is the revised version of my previous one:
> https://lore.kernel.org/lkml/20250918230857.127400-1-o-takashi@sakamocchi.jp/
> 
> Changes from v1:
> * Ensure to initialize local variable
> 
> Takashi Sakamoto (6):
>   firewire: core: remove useless generation check
>   firewire: core: use switch statement to evaluate transaction result to
>     CSR_BUS_MANAGER_ID
>   firewire: core: code refactoring for the case of generation mismatch
>   firewire: core: code refactoring to split contention procedure for bus
>     manager
>   firewire: core; eliminate pick_me goto label
>   firewire: core: minor code refactoring to delete useless local
>     variable
> 
>  drivers/firewire/core-card.c | 335 ++++++++++++++++++-----------------
>  1 file changed, 177 insertions(+), 158 deletions(-)

Applied to for-next branch.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
