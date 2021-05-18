Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C0133386EAD
	for <lists+linux1394-devel@lfdr.de>; Tue, 18 May 2021 03:05:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1lioAO-0002UZ-62; Tue, 18 May 2021 01:05:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <gustavo@embeddedor.com>) id 1lioAM-0002UR-P9
 for linux1394-devel@lists.sourceforge.net; Tue, 18 May 2021 01:04:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:References:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Pbpl9jwNpghY8UxBudIui3lu4/5noqBFoDwVGTFEH8g=; b=k4BDj+W49BnBgafX1GfKs1taVs
 C64330SgN/aZGD/AymcUX8EBTFZezPyN2YldbRBVZv7o6eSoWn2fDFjcMymIQiyr9fEjz6dJRzarU
 diWguo1SOJZ60iJOZGo8qtmo/7HzNEooe5IHRfU4OFppuySai10keBJ30PrrsEp4PfwM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:References:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Pbpl9jwNpghY8UxBudIui3lu4/5noqBFoDwVGTFEH8g=; b=SbolcQgWkNNyFrjh+CNdTBe5ut
 JG9Z32jLGfAEYLwJAGR3JAoL/IiLmDIcdEjHQmrU56hNxwBrRKJaIfN95iemsFf2S6U8Mfxk5obIN
 MRh+3GdVo13RKc3a+xy5dYaFNeHyqP/zJ+QwymrgxncjxWnhQZlIqPlZVfQy/CnxumTc=;
Received: from gateway20.websitewelcome.com ([192.185.46.107])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lioAI-00C4Sn-Je
 for linux1394-devel@lists.sourceforge.net; Tue, 18 May 2021 01:04:59 +0000
Received: from cm16.websitewelcome.com (cm16.websitewelcome.com [100.42.49.19])
 by gateway20.websitewelcome.com (Postfix) with ESMTP id 63635400DCBFE
 for <linux1394-devel@lists.sourceforge.net>;
 Mon, 17 May 2021 19:28:44 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id innIl3wN0vAWvinnIlDucf; Mon, 17 May 2021 19:41:08 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:References:Cc:To:From:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Pbpl9jwNpghY8UxBudIui3lu4/5noqBFoDwVGTFEH8g=; b=tFCTvJ4oaHLPJ8rKrWC+CExEbs
 cY2hOL3IRdYYJmQD1lgeLY1NYejqCqFzvMG8u9EzAREEMKwfId3ad/YNd8TlSW58gTE9BrgihqtQt
 1eWAoLjLev+wFFK3SuN8TZaCfzasIUiggJ902zEN3GCQTWbLNQHFZQUI5iVJxfsuiAm2hBrqJU4n9
 IL532QQ5uDpO3zBxDiAj1lF7IXqgQrUphq+SC2EAz/LQWKYwMx9GZ6j1kIG3bYqPWOwwxoztvFdcT
 3SzbpdNGB47sM/IUrV68Tz2iQR0hVzJAUNQitkaMDWzpLd6VpI0cOta44XPvw8DG2SyzYv8P8mCJW
 5afvSOKg==;
Received: from 187-162-31-110.static.axtel.net ([187.162.31.110]:53494
 helo=[192.168.15.8])
 by gator4166.hostgator.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
 (envelope-from <gustavo@embeddedor.com>)
 id 1linnF-002hwX-TQ; Mon, 17 May 2021 19:41:05 -0500
Subject: Re: [PATCH][next] firewire: core: Fix fall-through warnings for Clang
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Stefan Richter <stefanr@s5r6.in-berlin.de>
References: <20210305074223.GA123031@embeddedor>
 <69b103b8-1955-ce79-57ec-0e9eca48ba6c@embeddedor.com>
Message-ID: <2b6d1493-2dd7-7a4c-d158-00a853a5b9a3@embeddedor.com>
Date: Mon, 17 May 2021 19:41:47 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <69b103b8-1955-ce79-57ec-0e9eca48ba6c@embeddedor.com>
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
X-Exim-ID: 1linnF-002hwX-TQ
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 187-162-31-110.static.axtel.net ([192.168.15.8])
 [187.162.31.110]:53494
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 61
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [192.185.46.107 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [192.185.46.107 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1lioAI-00C4Sn-Je
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

Hi,

If you don't mind, I'm taking this in my -next[1] branch for v5.14.

Thanks
--
Gustavo

[1] https://git.kernel.org/pub/scm/linux/kernel/git/gustavoars/linux.git/log/?h=for-next/kspp

On 4/20/21 15:12, Gustavo A. R. Silva wrote:
> Hi all,
> 
> Friendly ping: who can take this, please?
> 
> Thanks
> --
> Gustavo
> 
> On 3/5/21 01:42, Gustavo A. R. Silva wrote:
>> In preparation to enable -Wimplicit-fallthrough for Clang, fix a warning
>> by explicitly adding a fallthrough pseudo-keyword.
>>
>> Link: https://github.com/KSPP/linux/issues/115
>> Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
>> ---
>>  drivers/firewire/core-topology.c | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/drivers/firewire/core-topology.c b/drivers/firewire/core-topology.c
>> index ec68ed27b0a5..b63d55f5ebd3 100644
>> --- a/drivers/firewire/core-topology.c
>> +++ b/drivers/firewire/core-topology.c
>> @@ -58,6 +58,7 @@ static u32 *count_ports(u32 *sid, int *total_port_count, int *child_port_count)
>>  		case SELFID_PORT_PARENT:
>>  		case SELFID_PORT_NCONN:
>>  			(*total_port_count)++;
>> +			fallthrough;
>>  		case SELFID_PORT_NONE:
>>  			break;
>>  		}
>>


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
