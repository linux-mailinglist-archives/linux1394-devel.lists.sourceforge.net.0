Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EEFA9F2A7A
	for <lists+linux1394-devel@lfdr.de>; Thu,  7 Nov 2019 10:21:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1iSdyv-0003Fn-AU; Thu, 07 Nov 2019 09:21:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <SRS0=eSf2=Y7=ladisch.de=clemens@webclient5.webclient5.de>)
 id 1iSdyu-0003Fc-Jm
 for linux1394-devel@lists.sourceforge.net; Thu, 07 Nov 2019 09:21:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:Cc:References:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/vXWFntUI4TGvmx8IwZSUVvg+eEqQStAwzbFI5xP1F8=; b=lYd8ElmnSWTzpT0yzLDIfE3JvG
 DlRNU/0bnGMmWi0HUuDt/l2eAFji6TxyXJ7EK11tp/+qg6xUhVuj5BU4vmh/JN0zgaEJw5V+BvEGm
 vQUtOkv5ceVqqAI3Z/SNFODFQyvIzuc2eNXNsDWmNp0tKBLq34OSZ3qjJMcDprkMRjog=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:Cc:References:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/vXWFntUI4TGvmx8IwZSUVvg+eEqQStAwzbFI5xP1F8=; b=OcfvY18UyNx8uFGdjzpPY2yK6u
 yvW0FZkLF37AbY/JfuGr8xSBh7SptjXHJSfWqfLDbbd0y8/i9XUaEDe7uXwUA1HF2yvEw8/phCfbT
 2qoSLllLCaEMEwMQ0K/0Xftht6ogSCYEWFWbyvYUsvD0hvzC3rP6Ww9mJlIo1FhoqnYw=;
Received: from webclient5.webclient5.de ([136.243.32.184])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iSdyp-003Vbx-Jj
 for linux1394-devel@lists.sourceforge.net; Thu, 07 Nov 2019 09:21:32 +0000
Received: from [10.1.2.4] (unknown [94.101.37.79])
 by webclient5.webclient5.de (Postfix) with ESMTPSA id 5C399558401C;
 Thu,  7 Nov 2019 10:02:48 +0100 (CET)
Subject: Re: [PATCH] firewire: ohci: Fix driver for systems with a page size
 >=64k
To: Forest Crossman <cyrozap@gmail.com>
References: <20191026082029.10358-2-cyrozap@gmail.com>
From: Clemens Ladisch <clemens@ladisch.de>
Message-ID: <1e3a52c3-db6e-7b67-115f-82f08d16f329@ladisch.de>
Date: Thu, 7 Nov 2019 10:02:49 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191026082029.10358-2-cyrozap@gmail.com>
Content-Language: en-US
X-Virus-Scanned: clamav-milter 0.99.4 at webclient5
X-Virus-Status: Clean
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1iSdyp-003Vbx-Jj
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
Cc: linux1394-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Forest Crossman wrote:
> -#define MAX_ASYNC_PAYLOAD	4096
> +#define MAX_ASYNC_PAYLOAD	REQ_COUNT_SIZE

This describes a restriction of the FireWire protocol; 4096 is correct.

> +#define REQ_COUNT_MAX 0xfffc
> +#define REQ_COUNT_SIZE (PAGE_SIZE >= REQ_COUNT_MAX ? REQ_COUNT_MAX : PAGE_SIZE)
> +
>  #define AR_BUFFER_SIZE	(32*1024)
> -#define AR_BUFFERS_MIN	DIV_ROUND_UP(AR_BUFFER_SIZE, PAGE_SIZE)
> +#define AR_BUFFERS_MIN	DIV_ROUND_UP(AR_BUFFER_SIZE, REQ_COUNT_SIZE)
>
>  #define MAX_AR_PACKET_SIZE	(16 + MAX_ASYNC_PAYLOAD + 4)
> -#define AR_WRAPAROUND_PAGES	DIV_ROUND_UP(MAX_AR_PACKET_SIZE, PAGE_SIZE)
> +#define AR_WRAPAROUND_PAGES	DIV_ROUND_UP(MAX_AR_PACKET_SIZE, REQ_COUNT_SIZE)

The driver creates one DMA descriptor for each AR buffer page, and uses
the VM hardware to map the first page(s) again after the end.  This
ensures that the data of each packet is contiguous in the (virtual) ring
buffer memory.

Using DMA buffers smaller than a page will break this mechanism and
lead to data corruption.  (I do not know why your tests did not find
this; probably the AR packets were too small.)

Unless you want to rewrite the AR code, the only way to handle this
correctly is to create multiple DMA descriptors for each page.

And the iso DMA code also might use page-sized buffers.

I'll see if I can find time to write a patch ...


Regards,
Clemens


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
