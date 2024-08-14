Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F35449510F0
	for <lists+linux1394-devel@lfdr.de>; Wed, 14 Aug 2024 02:12:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1se1cl-000848-QL;
	Wed, 14 Aug 2024 00:12:23 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1se1cj-00083k-Hu
 for linux1394-devel@lists.sourceforge.net;
 Wed, 14 Aug 2024 00:12:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vTad3Bux405nKXI7e7I5fHtMjhpOQ9G4arPaeEasSgk=; b=lV4KajBsb94S9dpfrpKXpZ9l/x
 UNlDMafZwLyL+QsDBUMFIVtNBYzIOTQgYa92d2Nrsz0GKRyIihKOg5ssGqocsJJzJysZU28PIJh8f
 JmegdNh8fq3tw2T47oo9FUI9lERJaX4A0WxZviwiPjR7CZvesLz8q57F9LbyIa2A8jzg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vTad3Bux405nKXI7e7I5fHtMjhpOQ9G4arPaeEasSgk=; b=m4y49YcTG9G0oxZJzunxOFPx1/
 dC4OYnKTnJZoXmr+B2uHPby/y/j8lskhZCQ2HnRvJuGSpTCXVWiNUsIU2I6CXNhXvnSIbdF7CdP7t
 zW6F0fT4zIZ54IVfEssXTDCERKWsZsFygGV6ZYIizRiAEJmi3UN61FKfqN8v3Bt7tQ4s=;
Received: from fhigh7-smtp.messagingengine.com ([103.168.172.158])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1se1ci-0005VY-77 for linux1394-devel@lists.sourceforge.net;
 Wed, 14 Aug 2024 00:12:21 +0000
Received: from phl-compute-08.internal (phl-compute-08.nyi.internal
 [10.202.2.48])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 8D16E115173F;
 Tue, 13 Aug 2024 20:12:09 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-08.internal (MEProxy); Tue, 13 Aug 2024 20:12:09 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1723594329; x=
 1723680729; bh=vTad3Bux405nKXI7e7I5fHtMjhpOQ9G4arPaeEasSgk=; b=G
 ejHiIYojv+K7mwQQJmHe5L2k574z61wDW0gxqa894NaTNxPcB4dJJhx0YcFt8ZSq
 uIoWAwqDZ1dmkVqPxR+0xDhMiqwHU1dwQ4TxtZIh3MmPmhw582KqTRjyN8QFquqd
 jQrC8sNOYXcyFdmbtXwFLsea9LaSmzcvSHCpTF/KgR8oty/Fij8ZHPCnnZJWRFT7
 ksh2yxXQ8wWpxvnbazt790KhRzDpPhLnH2X8axIEUToQRwszJGn76SMYO4JDCVPL
 lMTWMxOHlY/ADkcgm8G9tL8hcKYXo1LXQUNbObwJvx0jFmSeKQGwp/Bgt8qlpZGU
 keTK6lCdXkNnrcTit/8MQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1723594329; x=1723680729; bh=vTad3Bux405nKXI7e7I5fHtMjhpO
 Q9G4arPaeEasSgk=; b=cl3IIcxBbjUKFaFRcrIckr7guCV5PqT5D73Iw7yV44om
 FNHjlGJHFK3T9xyWfJpwBDOWRXImRsNKLEtJLqbpJmN5Hk8KIevkOEaClyPJMVAe
 xy1xoYBcBei6NlQCLNK+tyIWvDof+YPshRYvw7hNa8U1kLyttLY856OutpFSGIXh
 xQd6nqG4eEt9c4l2amyUeawqjXqIpiia7rxU3dnrU4DE6WLR0hbxQph8otoy786g
 FFf2qmoodDpl5cBQ7f3kUu8yzIOeazv1+RC19a+/r2UE9EwPLp6H8RIUQ3T6shdQ
 B2n+QdkoPb4k1+999GXkk81/cG3rcXJTJ5CWFmQo0A==
X-ME-Sender: <xms:Wfa7Zk_cJJf5LEMRL3Ot0krGBHauR4s8J3MYpgT2EtKb5sCFFx_X1Q>
 <xme:Wfa7ZsvjaluqdHnhVELH-U7HUwWTk2NvA-SwAwG5E1u4sitlkRQGCV4zi_Ca1O9Xc
 YtUgtoIKBdFbSqQPD8>
X-ME-Received: <xmr:Wfa7ZqC3r_VYidOlFZ3HOgUeHcw02KT6QCDO8pB2Eg2KjkkOaCV_5gnwBrypmaCGlA0I73dqipm3go-efekPr54BZxurY-uBzg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddruddtfedgfeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvve
 fukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghm
 ohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrg
 htthgvrhhnpeehhffhteetgfekvdeiueffveevueeftdelhfejieeitedvleeftdfgfeeu
 udekueenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
 hoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopedv
 pdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvg
 hlsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhu
 gidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:Wfa7ZkdbLsf5p03_WFl9VvWDEnfZ4wsTmSPk4xH74qlLrrPAkFta7Q>
 <xmx:Wfa7ZpNrdmg_Jvl2UfdTT9NsFEDbXH-NtaUV50dX5uBuGOxim-lYRA>
 <xmx:Wfa7Zul7fAXz-bc27JkRyNtNaQuK5DSd9bsdiD60lTFxFSGPAlGTCA>
 <xmx:Wfa7ZrupvegeklREBVsMcDmlAF4aDdzFdU2KQu24Ib1qZDYJePe4hA>
 <xmx:Wfa7ZiY4HprCNqDD_zVvj5GPQXsR7wUbPuaYKaNLgkJAE53p8tHjH0s_>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 13 Aug 2024 20:12:08 -0400 (EDT)
Date: Wed, 14 Aug 2024 09:12:05 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH 0/5]  firewire: core: use XArray to maintain client
 resources
Message-ID: <20240814001205.GA12644@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20240812235210.28458-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240812235210.28458-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Aug 13, 2024 at 08:52:05AM +0900, Takashi Sakamoto
 wrote: > Hi, > > In core function, the instances of several types of client
 resources > are maintained by IDR, and the index value of each re [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1se1ci-0005VY-77
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

On Tue, Aug 13, 2024 at 08:52:05AM +0900, Takashi Sakamoto wrote:
> Hi,
> 
> In core function, the instances of several types of client resources
> are maintained by IDR, and the index value of each resource is passed to
> user space application as handle. As of kernel v6.0, IDR has been
> superseded by XArray and deprecated.
> 
> This series of changes is to obsolete the usage of IDR with XArray.
> 
> Takashi Sakamoto (5):
>   firewire: core: minor code refactoring to release client resource
>   firewire: core: add helper functions to convert to parent resource
>     structure
>   firewire: core: add helper function to detect data of iso resource
>     structure
>   firewire: core: code refactoring to use idr_for_each_entry() macro
>     instead of idr_for_each() function
>   firewire: core: use xarray instead of idr to maintain client resource
> 
>  drivers/firewire/core-cdev.c | 170 +++++++++++++++++++----------------
>  drivers/firewire/core.h      |   1 -
>  2 files changed, 94 insertions(+), 77 deletions(-)

Applied to for-next branch.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
