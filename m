Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 29E2D364DBB
	for <lists+linux1394-devel@lfdr.de>; Tue, 20 Apr 2021 00:40:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1lYcYg-00015a-Ac; Mon, 19 Apr 2021 22:39:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <keescook@chromium.org>) id 1lYcYe-00015T-MR
 for linux1394-devel@lists.sourceforge.net; Mon, 19 Apr 2021 22:39:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=z7kIVSYEdrRLbG/oTtoQrKQxmDG3dmpZPUyg3EMa1CI=; b=km/ZO2N+J2UWt7IMBRcIanDl1D
 7X8/OmZnLiKFafWYnQlvHBkfTZsMNAeegUV6QhUviUKmGbv+vqlnD9WQJznUWEqZMPb5oFVdS5t7O
 bF4JRg+l75CTXJuCrzZBBGLE5t1FwlMe0q6xEyQVRjhCiJ7x3X8kZ9IFEoy0nE2XhRdo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=z7kIVSYEdrRLbG/oTtoQrKQxmDG3dmpZPUyg3EMa1CI=; b=SehBZOsLdE79wJXGRFzPwpk27U
 FnOCmU2bHE0O3Qd+cMLBfIn6K0JUpWOYkdTMTJ3AV9i7edvHijYKQBOgGqPc7cJaYIKMEniBh756n
 UeNd0S9nioSVMtiHTZ0QmL8cSbXH8KnQ4bjq05gB9cnwCQntTG2Y6vz7FLwqR6YZ/Jx4=;
Received: from mail-io1-f51.google.com ([209.85.166.51])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lYcYT-00GyY2-1g
 for linux1394-devel@lists.sourceforge.net; Mon, 19 Apr 2021 22:39:56 +0000
Received: by mail-io1-f51.google.com with SMTP id z14so3055078ioc.12
 for <linux1394-devel@lists.sourceforge.net>;
 Mon, 19 Apr 2021 15:39:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=z7kIVSYEdrRLbG/oTtoQrKQxmDG3dmpZPUyg3EMa1CI=;
 b=Sc9mIgdJ5IJ09G9kAqZ9VsN1nsYl+yz3IGYKiVoJZ31Jk4GPBt030CiHSA3T7NfRVD
 V0fzJmr7jDWGooYekukrrrg4QXb9oTMYULfmrYj9uREqw4NITDNEeYQkMdFvW2ENTTju
 I09A75uB7/7mdrhUmFll44K2Bs3tXGMjLNa6k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=z7kIVSYEdrRLbG/oTtoQrKQxmDG3dmpZPUyg3EMa1CI=;
 b=kNSeeuXBDRQUoLD78c0NHbp022VI5vBYpYls2T20hY+sExhyw5Ny4ipVkbz2NwjzvA
 ykni3Hm0eFHa51IVQ0fPIhDvHXOWA4B60tqa8ia0c6rpSqFo7zim/u5OxZd7PVNeOrS0
 0kqUU4+eceOihxxnSrH5lhQFyAveh0Y+0nm1zqhwmHllNIPzDSN7bRBmmJr18ZsrpL0X
 1Fwm77KILUdbVhJdbmGc49WUDyR5xoJn5GgfPfG3BohxBCIi8XHIIcJw/EqZyEFUygsN
 uxUEtytbXjRt+p9r9nLpQTkIl7Uu/iTtpHc89oc6xHp+hTvq9eoAey0GlMnwGb9re5Ku
 ocLw==
X-Gm-Message-State: AOAM533WFJilmijIPwpsdjFLFuCR57/hSyJ+UCOgVweW5Rf5hqSeMaSy
 LoefSmskqW/DtVvuMBJ1l4Vsdr32lLYHQQ==
X-Google-Smtp-Source: ABdhPJw5yzdDzieag+gqmOa5kavOqzVuM6LBmdKRuUmV+3JzQTh1pmD4bxzemJrOuM5oef2m82t6hQ==
X-Received: by 2002:a65:5581:: with SMTP id j1mr2421475pgs.420.1618868534877; 
 Mon, 19 Apr 2021 14:42:14 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id r14sm345587pjz.43.2021.04.19.14.42.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Apr 2021 14:42:14 -0700 (PDT)
Date: Mon, 19 Apr 2021 14:42:13 -0700
From: Kees Cook <keescook@chromium.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] media: firewire: firedtv-avc: fix a buffer overflow in
 avc_ca_pmt()
Message-ID: <202104191438.D54A181@keescook>
References: <000001d73031$d5304480$7f90cd80$@nsfocus.com>
 <YHaulytonFcW+lyZ@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YHaulytonFcW+lyZ@mwanda>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.51 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.51 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lYcYT-00GyY2-1g
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
Cc: security@kernel.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-distros@vs.openwall.org, Luo Likang <luolikang@nsfocus.com>,
 linux1394-devel@lists.sourceforge.net, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Wed, Apr 14, 2021 at 11:57:59AM +0300, Dan Carpenter wrote:
> The bounds checking in avc_ca_pmt() is not strict enough.  It should
> be checking "read_pos + 4" because it's reading 5 bytes.  If the
> "es_info_length" is non-zero then it reads a 6th byte so there needs to
> be an additional check for that.
> 
> I also added checks for the "write_pos".  I don't think these are
> required because "read_pos" and "write_pos" are tied together so
> checking one ought to be enough.  But they make the code easier to
> understand for me.
> 
> The other problem is that "length" can be invalid.  It comes from
> "data_length" in fdtv_ca_pmt().
> 
> Cc: stable@vger.kernel.org
> Reported-by: Luo Likang <luolikang@nsfocus.com>
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>

Thanks for the report and the fix!

As a quick note on alternative mitigations, it seems that
CONFIG_UBSAN_BOUNDS would have caught this at runtime too. (i.e.
c->operand[]'s size is known at build time, so out of bounds
indexing should be detected.)

-Kees

> ---
> This hardware isn't super common so there is no embargo.  Resending
> through normal lists.
> 
> Oh, another thing is the data_length calculation in fdtv_ca_pmt() seems
> very suspicous.  Reading more than 4 bytes in the loop will lead to
> shift wrapping.
> 
>  drivers/media/firewire/firedtv-avc.c | 14 +++++++++++---
>  drivers/media/firewire/firedtv-ci.c  |  2 ++
>  2 files changed, 13 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/media/firewire/firedtv-avc.c b/drivers/media/firewire/firedtv-avc.c
> index 2bf9467b917d..71991f8638e6 100644
> --- a/drivers/media/firewire/firedtv-avc.c
> +++ b/drivers/media/firewire/firedtv-avc.c
> @@ -1165,7 +1165,11 @@ int avc_ca_pmt(struct firedtv *fdtv, char *msg, int length)
>  		read_pos += program_info_length;
>  		write_pos += program_info_length;
>  	}
> -	while (read_pos < length) {
> +	while (read_pos + 4 < length) {
> +		if (write_pos + 4 >= sizeof(c->operand) - 4) {
> +			ret = -EINVAL;
> +			goto out;
> +		}
>  		c->operand[write_pos++] = msg[read_pos++];
>  		c->operand[write_pos++] = msg[read_pos++];
>  		c->operand[write_pos++] = msg[read_pos++];
> @@ -1177,13 +1181,17 @@ int avc_ca_pmt(struct firedtv *fdtv, char *msg, int length)
>  		c->operand[write_pos++] = es_info_length >> 8;
>  		c->operand[write_pos++] = es_info_length & 0xff;
>  		if (es_info_length > 0) {
> +			if (read_pos >= length) {
> +				ret = -EINVAL;
> +				goto out;
> +			}
>  			pmt_cmd_id = msg[read_pos++];
>  			if (pmt_cmd_id != 1 && pmt_cmd_id != 4)
>  				dev_err(fdtv->device, "invalid pmt_cmd_id %d at stream level\n",
>  					pmt_cmd_id);
>  
> -			if (es_info_length > sizeof(c->operand) - 4 -
> -					     write_pos) {
> +			if (es_info_length > sizeof(c->operand) - 4 - write_pos ||
> +			    es_info_length > length - read_pos) {
>  				ret = -EINVAL;
>  				goto out;
>  			}
> diff --git a/drivers/media/firewire/firedtv-ci.c b/drivers/media/firewire/firedtv-ci.c
> index 9363d005e2b6..2d6992ac5dd6 100644
> --- a/drivers/media/firewire/firedtv-ci.c
> +++ b/drivers/media/firewire/firedtv-ci.c
> @@ -134,6 +134,8 @@ static int fdtv_ca_pmt(struct firedtv *fdtv, void *arg)
>  	} else {
>  		data_length = msg->msg[3];
>  	}
> +	if (data_length > sizeof(msg->msg) - 4)
> +		return -EINVAL;
>  
>  	return avc_ca_pmt(fdtv, &msg->msg[data_pos], data_length);
>  }
> -- 
> 2.30.2
> 

-- 
Kees Cook


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
