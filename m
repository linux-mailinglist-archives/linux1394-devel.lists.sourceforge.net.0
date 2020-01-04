Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AD161304C5
	for <lists+linux1394-devel@lfdr.de>; Sat,  4 Jan 2020 22:53:16 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1inrM3-0003Na-Ts; Sat, 04 Jan 2020 21:53:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <joel@joelfernandes.org>) id 1inrM1-0003NE-Kf
 for linux1394-devel@lists.sourceforge.net; Sat, 04 Jan 2020 21:53:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=plpKbdiW72DXJOvU1TVKdnl0zL4VM/YG87vawclIn4g=; b=Bblapu0H7czwN3mHi02mIJadn/
 0O2DLdNJn2Fxr3mMcavczaexG0CbxPG77G0/vmU1usuBneiA9lH6jMKJXK9bUERYQ6O0h/6cqDjoo
 03+g2M06XSQM9CEL3TUD7pQv1SrzfD0t7XJF+fx5UqQCafgBNS6u8AoeaKgUuTsiwOBQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=plpKbdiW72DXJOvU1TVKdnl0zL4VM/YG87vawclIn4g=; b=Dz5ktc96bZQoRNEPDhy5cZJwFV
 bX80Z1lj/rWxCG9treitYw0L8FN56cjwTJokmuNchZInnhi5Zo3boPsYb8GCAwl5ReiFMDDy576YX
 JZVsGqzuUx1LKkO4jGehTr28FJMIDScTJdTI3rxmiW/eLELjyxkHPf2boj0yNmTPAZrg=;
Received: from mail-pf1-f196.google.com ([209.85.210.196])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1inrLu-009Tw3-TS
 for linux1394-devel@lists.sourceforge.net; Sat, 04 Jan 2020 21:53:05 +0000
Received: by mail-pf1-f196.google.com with SMTP id 4so25116960pfz.9
 for <linux1394-devel@lists.sourceforge.net>;
 Sat, 04 Jan 2020 13:52:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=joelfernandes.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=plpKbdiW72DXJOvU1TVKdnl0zL4VM/YG87vawclIn4g=;
 b=am5n50n1oazIAUJ+wPBXku6ho9iqM+p9CB9klzmmA3vS9X9Fy65BjVdjbZadmAjSTF
 j7rspwpImjnIRTaPRl89iMez9Wwy0CEciZyQ+72J/Js5lZPUyCO6b6TQxTYvA33B/LUJ
 qW0Kx8ekLp+UQ+TwZjCvlGUFOndUeA4M/hX88=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=plpKbdiW72DXJOvU1TVKdnl0zL4VM/YG87vawclIn4g=;
 b=tZ85JVe+2WGTlgDmURInQj1IUVBcWpOBPX2ApGgdeeHygyCKhil19Q4UVCVtAAaYPi
 7Y6letLf4S6PlcamXrE9BOodfDp2FIIPhGDivSzH3IJgP7N70ATX8uCoPhyxFHVe1Iwb
 0Adrs2skTajUBTDtUOm52mDSvrA8TW11ucSypWwL3lnM1qOQpuag82BJ5rgvhcQNYtL6
 SqCkx+uF7pvjVtRk9kEDjUnpnLvoAGzsEnJ0pwtEDwV+XHn0gp4gGRfK5by2iZUjaFOB
 p5NvfZW9Aw7aEnP/nBk/DvZ/IjTg+iUASz+jwQ0R+ob7br/fsyAQkLdAyQn6P/C2acV+
 gtvg==
X-Gm-Message-State: APjAAAVTr3G5xGbIuAPx+EpwfnHGLkRGOPdUX09rELJwF6GPXEGkEeTI
 gDbn/2aTA1V49M9uYqoNKE71EA==
X-Google-Smtp-Source: APXvYqznm49seUa5hKAczurh81jT6PyWLH3/0O90WcjrfI7g+tRM/rvYJDn6zIYHARt2LE/nuhElqA==
X-Received: by 2002:aa7:96b7:: with SMTP id g23mr98998711pfk.108.1578172892874; 
 Sat, 04 Jan 2020 13:21:32 -0800 (PST)
Received: from localhost ([2620:15c:6:12:9c46:e0da:efbf:69cc])
 by smtp.gmail.com with ESMTPSA id s18sm67570463pfh.179.2020.01.04.13.21.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 04 Jan 2020 13:21:32 -0800 (PST)
Date: Sat, 4 Jan 2020 16:21:31 -0500
From: Joel Fernandes <joel@joelfernandes.org>
To: madhuparnabhowmik04@gmail.com
Subject: Re: [PATCH] drivers: firewire: core-transaction: Pass lockdep
 condition to address_handler_list iterator
Message-ID: <20200104212131.GN189259@google.com>
References: <20200104144215.27590-1-madhuparnabhowmik04@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200104144215.27590-1-madhuparnabhowmik04@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: joelfernandes.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.196 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1inrLu-009Tw3-TS
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
Cc: paulmck@kernel.org, frextrite@gmail.com, linux-kernel@vger.kernel.org,
 rcu@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 linux-kernel-mentees@lists.linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Sat, Jan 04, 2020 at 08:12:15PM +0530, madhuparnabhowmik04@gmail.com wrote:
> From: Madhuparna Bhowmik <madhuparnabhowmik04@gmail.com>
> 
> The address_handler_list is traversed with list_for_each_entry_rcu
> with address_handler_list_lock held.
> list_for_each_entry_rcu has built-in RCU and lock checking.
> Use it for address_handler_list traversal.
> 
> Signed-off-by: Madhuparna Bhowmik <madhuparnabhowmik04@gmail.com>

Reviewed-by: Joel Fernandes (Google) <joel@joelfernandes.org>

thanks,

 - Joel

> ---
>  drivers/firewire/core-transaction.c | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
> index 404a035f104d..a15e70027932 100644
> --- a/drivers/firewire/core-transaction.c
> +++ b/drivers/firewire/core-transaction.c
> @@ -61,6 +61,11 @@
>  #define PHY_CONFIG_ROOT_ID(node_id)	((((node_id) & 0x3f) << 24) | (1 << 23))
>  #define PHY_IDENTIFIER(id)		((id) << 30)
>  
> +static DEFINE_SPINLOCK(address_handler_list_lock);
> +static LIST_HEAD(address_handler_list);
> +
> +#define address_handler_list_lock_held() lock_is_held(&(address_handler_list_lock).dep_map)
> +
>  /* returns 0 if the split timeout handler is already running */
>  static int try_cancel_split_timeout(struct fw_transaction *t)
>  {
> @@ -485,7 +490,7 @@ static struct fw_address_handler *lookup_overlapping_address_handler(
>  {
>  	struct fw_address_handler *handler;
>  
> -	list_for_each_entry_rcu(handler, list, link) {
> +	list_for_each_entry_rcu(handler, list, link, address_handler_list_lock_held()) {
>  		if (handler->offset < offset + length &&
>  		    offset < handler->offset + handler->length)
>  			return handler;
> @@ -514,8 +519,6 @@ static struct fw_address_handler *lookup_enclosing_address_handler(
>  	return NULL;
>  }
>  
> -static DEFINE_SPINLOCK(address_handler_list_lock);
> -static LIST_HEAD(address_handler_list);
>  
>  const struct fw_address_region fw_high_memory_region =
>  	{ .start = FW_MAX_PHYSICAL_RANGE, .end = 0xffffe0000000ULL, };
> -- 
> 2.17.1
> 


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
