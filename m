Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7196E8195E8
	for <lists+linux1394-devel@lfdr.de>; Wed, 20 Dec 2023 01:48:52 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rFklH-0000QT-5s;
	Wed, 20 Dec 2023 00:48:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rFklF-0000QK-1L
 for linux1394-devel@lists.sourceforge.net;
 Wed, 20 Dec 2023 00:48:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZZWeUI8Z6NJ3zfoU+DP0OJNgoKe55BRX9UMdfeIctTw=; b=mi8l38njEZWw18mxX6M5B1eTfe
 9HsPpWewyalkLKHrO80RlREA2HAdt72aQbKyOYNbIUvneLW6naeB3QgsWJnmT+n5iN0K9TLh5c4SU
 EWjO6gid7A+zljEXQQBoE6dX1BfZ42e3PZ1fOiqCrpf+AsDWMlBY33VJuBu2NCfgp9UA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZZWeUI8Z6NJ3zfoU+DP0OJNgoKe55BRX9UMdfeIctTw=; b=EjPWWr1pjO/M8kROvID4OSu+Di
 k9GKvjRGPNTb9d+9HUxgd+teM+9RElgjtiqTV+qWTZO9u6BTPnZoR3ZKAHZDvMpZZ3uW5djOiGryD
 Zgu7euYxqTwHKtWhpsWsjmDj334zd/yFWG4YKNCZ+19nfF1w7h1IVu2zsAUFkfZXytzs=;
Received: from wout3-smtp.messagingengine.com ([64.147.123.19])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rFklD-0007Oi-1A for linux1394-devel@lists.sourceforge.net;
 Wed, 20 Dec 2023 00:48:33 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id 9CFAB32009F5;
 Tue, 19 Dec 2023 19:48:22 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Tue, 19 Dec 2023 19:48:22 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1703033302; x=
 1703119702; bh=ZZWeUI8Z6NJ3zfoU+DP0OJNgoKe55BRX9UMdfeIctTw=; b=D
 7ofODUMlAGxBgYVTq1fZBWb06CY0WPrgXozpAxQ9ulW/fwXpDxIF672okV6Tfsxh
 e5E2rHplwD/QrCHUycdrwjbFO7eRL4CBGBw3TvE4s+ik/LrZwY9PPoSxdv3ZnenW
 gSUt40EfcqHZ25JJyihnW9g814n4JSK4Qareb24CNizy0FeQe2zo/Y3i/YIbRmtg
 hf57HcUZVgdXKU8NWtLDYXbOB4K3etKnAaRd2MDFg+kGfA1yJIaaDWbMdOxrzj4C
 x9qZYSsjxBEGATiaNETnFTZqTbOTRjgqseQQKsdmyJS9zeUAeZpzoDwHKhht8dSL
 tiAyhT7oo2sQroc62MpLQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1703033302; x=1703119702; bh=ZZWeUI8Z6NJ3zfoU+DP0OJNgoKe5
 5BRX9UMdfeIctTw=; b=uewWNLnuEdpjYfamCH4qz6jqsdaeCnhVWZUn/T3X2uSv
 mPVjsYK/FEV5KWQwn1L4XgZWwTqBhYouRhejSBZsDCK5KjPlbsU17iSsxDzF0Rx0
 stVHNCHaPxM226BrjRk3v7Ej/EyxLmDUBZu+sDXqrBsbrR+Uz6Z4MW4cgbVvAluH
 /4eI9+ApVYomn0zo+z8N/YIh3zRYCmJ7UbjaaB56EIh2sYHYGZtyGC5kIsg7Uwv1
 ureAMAI7kEm2Wae7bPV+jqt59pf6BaKOdUcBWfZM46DiZDvwGE7/p5lmEIjmsd4Y
 KSBLk/NulSoTSqRZhXGHXoRcS+cad3pmc+JEzUinJQ==
X-ME-Sender: <xms:1TmCZSw3g4zBoNrHzP6esesnfXj20kG4coTWEUGqWdlg8ufgoq4uJQ>
 <xme:1TmCZeQh9gMi1yZSOUzksk6uDLFGIIH9tviUkul3EP17kptvdf-Pqv1smfCMz9UQV
 ZAlkkvAVHQlsddoCQ8>
X-ME-Received: <xmr:1TmCZUWez7--OfTZIwkb-oq4vlKNTE0K8REVLQGL9t8CcRzA3pys8CSd9VOLquGveohKMPHG6nBblAMMraBqr9Ex3UWuczST3UA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvdduuddgvdeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepvfgrkhgr
 shhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhird
 hjpheqnecuggftrfgrthhtvghrnhepveeilefhudekffehkeffudduvedvfeduleelfeeg
 ieeljeehjeeuvdeghfetvedvnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlh
 hushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:1jmCZYjNFzbXRrL9rYrE609Rov3ADATeq2FgqvlkkJAvM1Uci7wxNA>
 <xmx:1jmCZUB3bhCEdPhV3YLORq0EdlnwDZTaj81f-JDbaoIPaHEk5O1jHg>
 <xmx:1jmCZZLiEi42vgSSGfI8hOgkWoZBVt1OYm3Uy8Yb8lZuAqXaRREI2Q>
 <xmx:1jmCZd4BuAmATv0jMv1TtlLO1_DiAcgFdPrzWf9ogAhtpIIfW89eGA>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 19 Dec 2023 19:48:20 -0500 (EST)
Date: Wed, 20 Dec 2023 09:48:17 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] firewire: make fw_bus_type const
Message-ID: <20231220004817.GA6217@workstation.local>
Mail-Followup-To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, linux1394-devel@lists.sourceforge.net
References: <2023121931-skydiver-dodgy-d1bd@gregkh>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2023121931-skydiver-dodgy-d1bd@gregkh>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Greg, On Tue, Dec 19, 2023 at 03:59:32PM +0100,
 Greg Kroah-Hartman
 wrote: > Now that the driver core can properly handle constant struct bus_type,
 > move the fw_bus_type variable to be a constant structure [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.19 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [64.147.123.19 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rFklD-0007Oi-1A
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

Hi Greg,

On Tue, Dec 19, 2023 at 03:59:32PM +0100, Greg Kroah-Hartman wrote:
> Now that the driver core can properly handle constant struct bus_type,
> move the fw_bus_type variable to be a constant structure as well,
> placing it into read-only memory which can not be modified at runtime.
> 
> Cc: Takashi Sakamoto <o-takashi@sakamocchi.jp>
> Cc: linux1394-devel@lists.sourceforge.net
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> ---
>  drivers/firewire/core-device.c | 2 +-
>  include/linux/firewire.h       | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)

Thanks for the patch. I applied it to for-next[1], since the following
commits at v6.4 kernel have already allowed to keep it as constant (your
absolute work!).

* commit ad8685d0f61a ("driver core: bus: constify bus_unregister()")
* commit 00c4a3c47da7 ("driver core: bus: constantify bus_register()")
* commit d492cc2573a0 ("driver core: device.h: make struct bus_type a const *")

[1] https://git.kernel.org/pub/scm/linux/kernel/git/ieee1394/linux1394.git/log/?h=for-next


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
