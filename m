Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D2F38715242
	for <lists+linux1394-devel@lfdr.de>; Tue, 30 May 2023 01:15:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1q3m54-0004lo-Tl;
	Mon, 29 May 2023 23:15:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1q3m54-0004lg-9g
 for linux1394-devel@lists.sourceforge.net;
 Mon, 29 May 2023 23:15:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tDK0nx2q7ZYmH1yaR4YoJ1JDawVZeLFQPj//47nqVWE=; b=j4WOzP5aPnToeXV2Z+FPaTuz9U
 83/cc+XO1Av4/IEzTj3bIqYqMxzJd2LTBfhF/PBNNbePZfsL0mMy3/STLclWvHyrB76YcjdFboqLb
 b9vp+5Mo8izydKzHlJFX4mgHxoLP+hJMjshRHwjhaexGLe+LfLz2kE+Q5E8/8IeqQgGM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tDK0nx2q7ZYmH1yaR4YoJ1JDawVZeLFQPj//47nqVWE=; b=HHp+1nZqfP9V4XEGM9WPAFKNxy
 gkxVXNGSGiZtgShoillbB/SlgYqKf6WMMJ49UfSKGfFd/NwloEW9xUrg09g8dH4qQci+VjRWTkyL3
 4hPzZOkRKzsdPOzISzXZp2Jk8A3SJt9e0gIDwO+lj3LrLHZbbGwSXfwoo6fgL8pMTxJQ=;
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q3m53-0003SH-Ro for linux1394-devel@lists.sourceforge.net;
 Mon, 29 May 2023 23:15:14 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailout.nyi.internal (Postfix) with ESMTP id 4CD595C00EE;
 Mon, 29 May 2023 19:15:08 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute1.internal (MEProxy); Mon, 29 May 2023 19:15:08 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm1; t=1685402108; x=
 1685488508; bh=tDK0nx2q7ZYmH1yaR4YoJ1JDawVZeLFQPj//47nqVWE=; b=r
 V12WMFdZ3QVKfkiNt4wXc30jQCSU8YLATZkxZqvXu3FWYHjStcIfAGSYD1GGaHCR
 nJwouN7V66bED/4uWiSpn+WzAeMyo+FcEGbgWgBNmnZyCZQFyawUHxBaiA+d+p5x
 5Jbx1AwDy/qJsUUxEbbRLLfzCJiZM5kdzJXoTYt+dDXUu1Ss4n5TsnMIDpqVLkMm
 wCZXoR82k4gxIcCTRy5o/5vvpkh4hJP1i5NNMtBc17OKPHkb9/x2F5mWuzJtmWJq
 sSFOSYFE0AbG4uEjwkGh9BxqGKZcFU0DNK9BhJ+yetViGwG5qNF1m1ifQ3Ju232a
 +cE6lG7O2XgasJaPL0AfQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm1; t=1685402108; x=1685488508; bh=tDK0nx2q7ZYmH
 1yaR4YoJ1JDawVZeLFQPj//47nqVWE=; b=rqRHZKJ3WwWD7r6hl7IyrUMWS1GOD
 1stsi2lVCk39z0eAEQHn6kOsEBVvGXUetKfzuAzyuO2oLZdCeYerPWfVCv6nw4O9
 Yg9gMwT3AkQwuEQVMGe4TAgvXxdtMvM8h8GE2EPPAcPj5Ylj7Xw7dCiSbOBnZn8d
 JyiLYpHvx9a9MOX20rmikSCa9tQot3br4HQImqA4Grup+vYhIao27hmCWRmJJSw3
 qD16BViN5NGGJQa9yH4QjORDcVnZiwMq0lwDFwLbQRl298ub5pHu8jQOduK+/5MT
 1+9Ynirqv/Te8WEyktaISNQq/1dYRssIfhGQ23AoffZPnN5ibo+/c9mSw==
X-ME-Sender: <xms:-zF1ZFEJf-LWLRZtMuKd_CvVhqz9IK5M4i-weU9aSYsecozopoWJQA>
 <xme:-zF1ZKXZF6-kf2TC_KQUkZxKJN7LpoAtZPEGQAgCt80mAQ0pLdefRww3GpX3W_92M
 -wRz_dQPbTTeRXtF3s>
X-ME-Received: <xmr:-zF1ZHJBLqyjk6erkLBMujJ0Y19w-QEtjtl0gp04wnbS61ohxUqdRIjakQ7mxTop9n5MEiSYUa4m6iL3IhnggPS00RW_b2fdo-U>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfeekiedgvddtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfhfgggtuggjsehttd
 ertddttddvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeevieelhf
 dukeffheekffduudevvdefudelleefgeeileejheejuedvgefhteevvdenucffohhmrghi
 nhepkhgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpe
 hmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:_DF1ZLG1eVQ5CuiqsVJGddwJIVjTJztTVP_L_jrxzDJ5P4iRqfjmMA>
 <xmx:_DF1ZLUmf4oElynFQ2X98jn9P0Tjd_TsICj6D0wcBi4SNk_9VkOTIQ>
 <xmx:_DF1ZGO1rFoHeoe8bclJSx2Rtji2u4xClysx-6Mz2FroEHD69XGvYw>
 <xmx:_DF1ZCdmdcg0IXiOPtkhp-Q2jKzMzdH4YfWERTGu-j83YgyalFfaQg>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 29 May 2023 19:15:06 -0400 (EDT)
Date: Tue, 30 May 2023 08:15:04 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 00/12] firewire: deliver hardware time stamp for
 asynchronous transaction
Message-ID: <20230529231504.GA20864@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, kunit-dev@googlegroups.com
References: <20230529113406.986289-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230529113406.986289-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, May 29, 2023 at 08:33:54PM +0900, Takashi Sakamoto
 wrote: > Cc: kunit-dev@googlegroups.com > > Hi, > > This patchset is revised
 version of the previous one[1], I realized that > it included wr [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.28 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.28 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1q3m53-0003SH-Ro
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
Cc: kunit-dev@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Mon, May 29, 2023 at 08:33:54PM +0900, Takashi Sakamoto wrote:
> Cc: kunit-dev@googlegroups.com
> 
> Hi,
> 
> This patchset is revised version of the previous one[1], I realized that
> it included wrong version number of Linux kernel. The new series
> includes changes just for it.
> 
> 
> Copied from the initial cover letter:
> 
> 1394 OHCI hardware supports hardware time stamp for asynchronous
> communication at 8,000 Hz resolution (= isochronous cycle), while
> current implementation of FireWire subsystem does not deliver the time
> stamp to both unit driver and user space application when operating the
> asynchronous communication. It is inconvenient to a kind of application
> which attempts to synchronize data from multiple sources by the (coarse)
> time stamp.
> 
> This patchset changes the subsystem so that the unit driver and the user
> space application to receive the time stamp, therefore it affects kernel
> service for asynchronous transaction, kernel API for unit driver, and UAPI
> for user space application.
> 
> [1] https://lore.kernel.org/lkml/20230525101625.888906-1-o-takashi@sakamocchi.jp/
> 
> Takashi Sakamoto (12):
>   firewire: add KUnit test to check layout of UAPI structures
>   firewire: cdev: add new version of ABI to notify time stamp at
>     request/response subaction of transaction
>   firewire: cdev: add new event to notify request subaction with time
>     stamp
>   firewire: cdev: implement new event to notify request subaction with
>     time stamp
>   firewire: core: use union for callback of transaction completion
>   firewire: core: implement variations to send request and wait for
>     response with time stamp
>   firewire: cdev: code refactoring to operate event of response
>   firewire: cdev: add new event to notify response subaction with time
>     stamp
>   firewire: cdev: implement new event to notify response subaction with
>     time stamp
>   firewire: cdev: code refactoring to dispatch event for phy packet
>   firewire: cdev: add new event to notify phy packet with time stamp
>   firewire: cdev: implement new event relevant to phy packet with time
>     stamp
> 
>  drivers/firewire/.kunitconfig       |   4 +
>  drivers/firewire/Kconfig            |  16 ++
>  drivers/firewire/Makefile           |   3 +
>  drivers/firewire/core-cdev.c        | 252 +++++++++++++++++++++-------
>  drivers/firewire/core-transaction.c |  93 +++++++---
>  drivers/firewire/core.h             |   7 +
>  drivers/firewire/ohci.c             |  17 +-
>  drivers/firewire/uapi-test.c        |  87 ++++++++++
>  include/linux/firewire.h            |  82 ++++++++-
>  include/uapi/linux/firewire-cdev.h  | 180 +++++++++++++++++---
>  10 files changed, 625 insertions(+), 116 deletions(-)
>  create mode 100644 drivers/firewire/.kunitconfig
>  create mode 100644 drivers/firewire/uapi-test.c

Applied to for-next branch.

* https://git.kernel.org/ieee1394/linux1394/c/fe971f9163b6


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
