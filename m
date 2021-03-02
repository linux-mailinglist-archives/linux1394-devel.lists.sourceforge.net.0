Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7168332AC5A
	for <lists+linux1394-devel@lfdr.de>; Tue,  2 Mar 2021 22:39:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1lHCjS-0001GN-GL; Tue, 02 Mar 2021 21:39:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <stefanr@s5r6.in-berlin.de>) id 1lHCjP-0001Fy-1L
 for linux1394-devel@lists.sourceforge.net; Tue, 02 Mar 2021 21:39:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EXYrUOxdbvzv66Qxr50yAi+MtlaD33oYRl6/1s8YmEI=; b=Qu1edoJXVjAN93oZoWtyVrICUx
 FNFlk683XbZiDqJyhR3FmhDHiDp7+zGjbi+c35zFJ4HyhiEXyoJvpkAF9UYhiNnN8/P1WBThSHukR
 edhcfSiQH/MTa7XElbjfJx06AogIYHUQMOvNsC6ybO6ReqFv7fcRYTHkEnlDgeLsqIJ0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EXYrUOxdbvzv66Qxr50yAi+MtlaD33oYRl6/1s8YmEI=; b=FEbh3IY/pK/wOahObiB+6kaH1w
 0pmZT25ycLsLdCa5zbPItMuXpy5E961tkJDnwHDCXyawya7zp2ezHFIHN3g73IACPpkLNmfaDeYpY
 AWRnpwwwBq/H0nSjJ1XUYQdN13SU0e5gAFxEr199nVjkO9kNgPiePAOOH9nMAQhl0pck=;
Received: from einhorn-mail-out.in-berlin.de ([217.197.80.21])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lHCjJ-00Bj1W-Ij
 for linux1394-devel@lists.sourceforge.net; Tue, 02 Mar 2021 21:39:02 +0000
X-Envelope-From: stefanr@s5r6.in-berlin.de
Received: from authenticated.user (localhost [127.0.0.1]) by
 einhorn.in-berlin.de with ESMTPSA id 122LJC2r005582
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
 Tue, 2 Mar 2021 22:19:27 +0100
Date: Tue, 2 Mar 2021 22:19:11 +0100
From: Stefan Richter <stefanr@s5r6.in-berlin.de>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] firewire: prevent integer overflow on 32bit systems
Message-ID: <20210302221911.6c1582e2@kant>
In-Reply-To: <YD4e9XOD8JPlJzxW@mwanda>
References: <YD4e9XOD8JPlJzxW@mwanda>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: arcgraph.de]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1lHCjJ-00Bj1W-Ij
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
Cc: linux1394-devel@lists.sourceforge.net, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Mar 02 Dan Carpenter wrote:
> In TCODE_STREAM_DATA mode, on 32bit systems, the "sizeof(*e) +
> request->length" operation can overflow leading to memory corruption.
> 
> Fixes: 18e9b10fcdc0 ("firewire: cdev: add closure to async stream ioctl")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
>  drivers/firewire/core-cdev.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
> index fb6c651214f3..314de0384035 100644
> --- a/drivers/firewire/core-cdev.c
> +++ b/drivers/firewire/core-cdev.c
> @@ -587,6 +587,9 @@ static int init_request(struct client *client,
>  	    request->length < 4)
>  		return -EINVAL;
>  
> +	if (request->length > ULONG_MAX - sizeof(*e))
> +		return -EINVAL;
> +
>  	e = kmalloc(sizeof(*e) + request->length, GFP_KERNEL);
>  	if (e == NULL)
>  		return -ENOMEM;

There is already a length check for asynchronous stream requests.
It happens in ioctl_send_stream_packet().
-- 
Stefan Richter
-======--=-= --== ---=-
http://arcgraph.de/sr/


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
