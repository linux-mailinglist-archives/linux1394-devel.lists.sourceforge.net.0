Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AF6E366115
	for <lists+linux1394-devel@lfdr.de>; Tue, 20 Apr 2021 22:44:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1lYxDs-00027n-Ob; Tue, 20 Apr 2021 20:43:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <gustavo@embeddedor.com>) id 1lYxDr-00027Z-5t
 for linux1394-devel@lists.sourceforge.net; Tue, 20 Apr 2021 20:43:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/R9UkJuQ7YZGJkQ6UXFLC3+p4h+sEMyvizG4Bj6L9D8=; b=BUzrTOYQQXTpeFhPH2/pKWDHsg
 a3QxWJFRnmAwNj13/QWzHvvqpUONBMMfl4fxkIw2pqlNPHcCuLwHwRato1/K8enU2+KXIGSUSrRbq
 2pl0js8+hxBHOQSwFoBzFFJ1Py+/vam/HZvtd3FdZJ2uw/9capvpss3g0IDuC8BzcspQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/R9UkJuQ7YZGJkQ6UXFLC3+p4h+sEMyvizG4Bj6L9D8=; b=ZjM6bBjgIKjVd5S8xvYoKREGWk
 /WnQCb/3SdmR8Oo4aqsDPOB43GcQKHh4Fd1pPZm67UIT8o/Ler8zXzSmTaoyfye7+t4mdCHoGIDrx
 itm5r8KoH2fahGoQ7Jc1GpAJ1NRFUCEcEfuQET/Q8qzq3ymtTLW24hVDTJVoVMQj38nI=;
Received: from gateway21.websitewelcome.com ([192.185.45.89])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lYxDb-004YpE-18
 for linux1394-devel@lists.sourceforge.net; Tue, 20 Apr 2021 20:43:51 +0000
Received: from cm17.websitewelcome.com (cm17.websitewelcome.com [100.42.49.20])
 by gateway21.websitewelcome.com (Postfix) with ESMTP id DB08F4010B418
 for <linux1394-devel@lists.sourceforge.net>;
 Tue, 20 Apr 2021 15:12:41 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id YwjhlOGcFMGeEYwjhlkxjI; Tue, 20 Apr 2021 15:12:41 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/R9UkJuQ7YZGJkQ6UXFLC3+p4h+sEMyvizG4Bj6L9D8=; b=LlurlvvrXyOUM81IDErArZVs6L
 jkyS0Wgk5C0o55yNenmsNkTXksQt1RKo1WiAlRUBZTAu+hDrJx4ikyVkYyiAKFOf1uEsdwH/kOtYN
 IruJL51clkIk3sOk5jbmONXlchRrgf6eHYFlrEKx4u/HjiEs2FOJ3/oH4Gjt3YIJ0VC7TnVYjmFXe
 LRPNQdFFKsA/6ok866hSBAiKimomVjdMY1aF86bS8SZrotp+02o47Ab6YL6Jadr4zCgNfZtC4S7/Q
 EPknCKDA77cHV11SRkTIs/WNKz/VuG33RieF2ZHOHFqKsgqy5DiEqQOkD+bOR15ib46Myy0vrIZ1t
 uFBmI58w==;
Received: from 187-162-31-110.static.axtel.net ([187.162.31.110]:48968
 helo=[192.168.15.8])
 by gator4166.hostgator.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94)
 (envelope-from <gustavo@embeddedor.com>)
 id 1lYwjf-002k6w-HY; Tue, 20 Apr 2021 15:12:39 -0500
Subject: Re: [PATCH][next] firewire: core: Fix fall-through warnings for Clang
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Stefan Richter <stefanr@s5r6.in-berlin.de>
References: <20210305074223.GA123031@embeddedor>
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Message-ID: <69b103b8-1955-ce79-57ec-0e9eca48ba6c@embeddedor.com>
Date: Tue, 20 Apr 2021 15:12:56 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210305074223.GA123031@embeddedor>
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.sourceforge.net
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 187.162.31.110
X-Source-L: No
X-Exim-ID: 1lYwjf-002k6w-HY
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 187-162-31-110.static.axtel.net ([192.168.15.8])
 [187.162.31.110]:48968
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 81
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [192.185.45.89 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [192.185.45.89 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1lYxDb-004YpE-18
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
Cc: linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi all,

Friendly ping: who can take this, please?

Thanks
--
Gustavo

On 3/5/21 01:42, Gustavo A. R. Silva wrote:
> In preparation to enable -Wimplicit-fallthrough for Clang, fix a warning
> by explicitly adding a fallthrough pseudo-keyword.
> 
> Link: https://github.com/KSPP/linux/issues/115
> Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
> ---
>  drivers/firewire/core-topology.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/firewire/core-topology.c b/drivers/firewire/core-topology.c
> index ec68ed27b0a5..b63d55f5ebd3 100644
> --- a/drivers/firewire/core-topology.c
> +++ b/drivers/firewire/core-topology.c
> @@ -58,6 +58,7 @@ static u32 *count_ports(u32 *sid, int *total_port_count, int *child_port_count)
>  		case SELFID_PORT_PARENT:
>  		case SELFID_PORT_NCONN:
>  			(*total_port_count)++;
> +			fallthrough;
>  		case SELFID_PORT_NONE:
>  			break;
>  		}
> 


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
