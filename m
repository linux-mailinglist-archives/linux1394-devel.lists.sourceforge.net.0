Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C38CB872BFD
	for <lists+linux1394-devel@lfdr.de>; Wed,  6 Mar 2024 02:11:07 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rhfoA-0000D9-JP;
	Wed, 06 Mar 2024 01:10:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rhfo2-0000Cp-7V
 for linux1394-devel@lists.sourceforge.net;
 Wed, 06 Mar 2024 01:10:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nIgXLago0+goMoIVpizmwo89vrCawNjtqrrcg3tzX1o=; b=bWCTfUr4a1b2wPaOGSWsHp5ucX
 osTcLONS4Btaov9/I5mb43hay8sCnWB23Oee4pdV1S/5CwlwhJWkDYQmeT0S2+Iz+IIzZXBGuOcNm
 /C00jzFH340qDcNARilQGZGzq11AD3VwdSzZcIuBrZaFNyWIa6DMTG5qgmlVCEfMfL5o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nIgXLago0+goMoIVpizmwo89vrCawNjtqrrcg3tzX1o=; b=l2E/SseG9nlYPsGzr2tKfV6aNs
 PgAIiEc6YXXN9b1z6ROd7uRVNr8iON+ne7qUDHZyXF9F+3P1H21c1Ceq+Stl0iCuZoxzo7YEx1Di0
 GkuPsbZwHoYjTonMaKKu1TY0y2CSXCrTW5wJThUKZChzYHFU3Eswrdg1e0e6NJwy+z+M=;
Received: from fhigh5-smtp.messagingengine.com ([103.168.172.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rhfno-00024g-OI for linux1394-devel@lists.sourceforge.net;
 Wed, 06 Mar 2024 01:10:45 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 1E23A1140138;
 Tue,  5 Mar 2024 20:10:37 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Tue, 05 Mar 2024 20:10:37 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1709687437; x=
 1709773837; bh=nIgXLago0+goMoIVpizmwo89vrCawNjtqrrcg3tzX1o=; b=q
 rgdFPf6B/Q7LoPmKvahlzpP6JYC84k8/nOrdLSn1SmDiWPM6SnSbBo+nylNVsnrf
 P9jKSmiSzMH1dkX6RW8arBUg+9/IRYB02iM4oiPU3S1asK7UVbCmJ19iDZhQDpyz
 eryN07pFHehUojspgvP7m9jHrtjmXU9FxtS4/Dj9XliMwMjD8ikZYPKrC3iqRfHs
 VpVfMjN7bSpLHtw1yOn+YWrI9MuenfsqbrNggmtXa8jfsEHyv83A3+XAfj3ydzTX
 /UyKA6wdmHjeVILM7CBEx9f6dDHBXldL0Ff4gYFMUs0xqpyJVkHUhCRvt7pLBzuW
 8hDjitwM1dU8TluXxG+Xw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; t=1709687437; x=1709773837; bh=nIgXLago0+goMoIVpizmwo89vrCa
 wNjtqrrcg3tzX1o=; b=VNrdu7IYFx1muMn62Ghnbw39NUezZAj2Rshfg0atzAc9
 tEhLV48vgNaUkv9zxmpQQuhggLpZBW7P1B/zKYNlcQZMzoi/wwxzldhz0iIWB1qX
 kC+MR8Jy0kthJEsDBQer46phQBZ8eaesk1KGRSgehzh13NsAo83ifr3vYYyWUoa/
 ED1xBwNjM6qsi4bqH3D/bONMck6kuCRKW4O9Mj7kZE2BZl/bMF1OFy31DLlzqYH3
 5TsGjXSqHKp7Xg+WrHWr524t3W8c18dlrv0X0w8kfiJWfRbtJXlYl2cRaf0BgPjP
 uw0n4FreaAxifJxUoegKRfz9Z7xgwjf+Wr2fRDtvPQ==
X-ME-Sender: <xms:jMLnZVScJBPyx5Bp4vhSd06NTpKHtTUgf_hL6ak7oTigjrf7in7EKw>
 <xme:jMLnZewjcEgvDveZgSL04ft44fsIQzvKIN4whkam4AjuHeL_wHA4E3QOOy6Or1xhT
 sPIqDTTlIKqZ2GrZPE>
X-ME-Received: <xmr:jMLnZa2r9VQQea-dw39tuzS--aK80RYPo3FNPGVhbGRmB331yCuiPpBuzduJR_FchKm4lv7ZtL-IUt03-kVZKflJHoXH8FNN6Xo>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledriedtgdefudcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvvefukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefvrghkrghs
 hhhiucfurghkrghmohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjh
 hpqeenucggtffrrghtthgvrhhnpeehhffhteetgfekvdeiueffveevueeftdelhfejieei
 tedvleeftdfgfeeuudekueenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmh
 grihhlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:jMLnZdDyNnM-Dy_VlVrz7kKEYL0pMVg3gM-FkA7rNI-od0FKJDVCBQ>
 <xmx:jMLnZegGkOAkEqF7Er105GduAHiasmTdaIZID_K5Uoz_8s3WUW_DfA>
 <xmx:jMLnZRr9TRLZRp-9xMn9ApVoQBvv7o41PgA3x1t-ztEsCCk5Og81cw>
 <xmx:jcLnZTYjJtbn9ek55E_4CSPMt0fi-zmny7eN95KbUhAyG3SFoj_f8Q>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 5 Mar 2024 20:10:33 -0500 (EST)
Date: Wed, 6 Mar 2024 10:10:30 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Subject: Re: [PATCH 0/2][next] firewire: Avoid -Wflex-array-member-not-at-end
 warnings
Message-ID: <20240306011030.GA71684@workstation.local>
Mail-Followup-To: "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Clemens Ladisch <clemens@ladisch.de>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Kees Cook <keescook@chromium.org>, linux-kernel@vger.kernel.org,
 linux-hardening@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-sound@vger.kernel.org, linux1394-devel@lists.sourceforge.net
References: <cover.1709658886.git.gustavoars@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1709658886.git.gustavoars@kernel.org>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Tue, Mar 05, 2024 at 11:24:15AM -0600, Gustavo A. R.
 Silva wrote: > -Wflex-array-member-not-at-end is coming in GCC-14, and we
 are getting > ready to enable it globally. So, we are deprecating flex [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.156 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rhfno-00024g-OI
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
 Kees Cook <keescook@chromium.org>, linux-kernel@vger.kernel.org,
 linux-sound@vger.kernel.org, Takashi Iwai <tiwai@suse.com>,
 linux-hardening@vger.kernel.org, Jaroslav Kysela <perex@perex.cz>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

On Tue, Mar 05, 2024 at 11:24:15AM -0600, Gustavo A. R. Silva wrote:
> -Wflex-array-member-not-at-end is coming in GCC-14, and we are getting
> ready to enable it globally. So, we are deprecating flexible-array
> members in the middle of another struct.
> 
> There are currently a couple of local structures (`u` and `template`)
> that are using a flexible `struct fw_iso_packet` as header for a couple
> of on-stack arrays.
> 
> We make use of the `struct_group_tagged()` helper to separate the
> flexible array from the rest of the members in the flexible structure,
> and, with this, we can now declare objects of the type of the tagged
> struct, without embedding the flexible array in the middle of another
> struct.
> 
> We also use `container_of()` whenever we need to retrieve a pointer to
> the flexible structure, through which the flexible-array member can be
> accessed.
> 
> With these changes, we fix a couple of -Wflex-array-member-not-at-end
> warnings.
> 
> Gustavo A. R. Silva (2):
>   firewire: Avoid -Wflex-array-member-not-at-end warning
>   ALSA: firewire-lib: Avoid -Wflex-array-member-not-at-end warning
> 
>  drivers/firewire/core-cdev.c  |  9 +++++----
>  include/linux/firewire.h      | 16 +++++++++-------
>  sound/firewire/amdtp-stream.c |  8 +++++---
>  3 files changed, 19 insertions(+), 14 deletions(-)

Thanks for the improvements, however we are mostly at the end of
development period for v6.8 kernel. Let me postpone applying the patches
until closing the next merge window (for v6.9), since we need the term to
evaluate the change. I mean that it goes to v6.10 kernel.

If you would like me to applying the patch v6.9 kernel, please inform it
to us.


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
