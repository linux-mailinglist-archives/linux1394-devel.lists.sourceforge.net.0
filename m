Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 84F2CEFD7F
	for <lists+linux1394-devel@lfdr.de>; Tue,  5 Nov 2019 13:45:33 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1iRyD4-0006zJ-8w; Tue, 05 Nov 2019 12:45:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <stefanr@s5r6.in-berlin.de>) id 1iRyD2-0006z9-CR
 for linux1394-devel@lists.sourceforge.net; Tue, 05 Nov 2019 12:45:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BoP16hfBVUm/Kye/tHuWLQChLxtlir9IqvYgHUqJg6g=; b=T/xgoFE02dF0jKM3vI96CdssLG
 lmRkAo0zUc5CqEfeO1Kgo0xLv8Zcud2TymqS1rdv9sNub4Rd0qzMKSCRrywAVhglh6gOJnQLjAL+o
 C9MtM0EffMy8UF2wRV2xn4twa1dEsKgMWnsBrG8m8JAoamJ0/+4WDtT3AO3B7aeyNm40=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BoP16hfBVUm/Kye/tHuWLQChLxtlir9IqvYgHUqJg6g=; b=A0lZ+h3a6PSW1R1FTadgE6Kn2t
 jbZ8M7CDS0d9e9oOzFGxN/Ha+xW7mlvMAqMT+zQOuFH3HACou0x6S7rjtREfoP4SGxppJpVNZej84
 ttBk2skSEEC4x4472lSHr3AXnny00dvaOfslY4qw/YBgLohMujoa1hPv+uFQ+FQIpmaY=;
Received: from einhorn-mail.in-berlin.de ([217.197.80.20])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iRyCz-000sA4-Qo
 for linux1394-devel@lists.sourceforge.net; Tue, 05 Nov 2019 12:45:20 +0000
X-Envelope-From: stefanr@s5r6.in-berlin.de
Received: from authenticated.user (localhost [127.0.0.1]) by
 einhorn.in-berlin.de with ESMTPSA id xA5CjA7p030935
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
 Tue, 5 Nov 2019 13:45:10 +0100
Date: Tue, 5 Nov 2019 13:45:09 +0100
From: Stefan Richter <stefanr@s5r6.in-berlin.de>
To: Forest Crossman <cyrozap@gmail.com>
Subject: Re: [PATCH] firewire: ohci: Fix driver for systems with a page size
 >=64k
Message-ID: <20191105134509.55644dd1@kant>
In-Reply-To: <20191026082029.10358-2-cyrozap@gmail.com>
References: <20191026082029.10358-2-cyrozap@gmail.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: arcgraph.de]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1iRyCz-000sA4-Qo
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

On Oct 26 Forest Crossman wrote:
> While testing a FireWire card on a POWER9 system, I discovered that
> while the card was detected by the driver properly, devices plugged into
> the card would get enumerated but fail to function. More specifically,
> the devices would fail to respond to requests, and userspace programs
> would report timeouts when trying to interact with those devices.
> 
> Upon investigation, I found that the firewire_ohci module was setting
> some request and response sizes to the PAGE_SIZE of the kernel. This
> would not be a problem normally, but because the field that holds the
> request/response size is mandated by the OHCI spec to be only 16 bits
> wide, the field was really getting set to (PAGE_SIZE & 0xffff), so on
> kernels with a page size of 64k like my POWER9 system that meant that
> the size of these requests/responses was getting set to zero--hence the
> apparent lack of response from the devices.

We had an old unresolved bug reported in 2009:
https://bugzilla.kernel.org/show_bug.cgi?id=12725

From a superficial read, it seems the symptoms have changed a little since
then.  The responsible code has probably seen changes in the meantime.

> To fix this, per the spec I capped the maximum size of requests and
> responses to the maximum the OHCI spec supports, which is 0xfffc
> (65532) bytes. The way I did this ends up wasting (PAGE_SIZE - 0xfffc)
> bytes for each data buffer, so it won't be very memory-efficient on
> systems with very large pages (e.g., 1 MB+), but since I don't have any
> systems like that to test on, and since this driver wouldn't have worked
> for those kinds of systems at all without these changes anyways, I
> think this is fix is "good enough" for now. After all, working
> inefficiently is better than not working at all, and we can always
> improve the efficiency later if we need to.
> 
> Tested using a TI XIO2213B-based FireWire card with both an Apple iSight
> and a Canopus ADVC-100.

Thank you.  I will review it later this week.

> Signed-off-by: Forest Crossman <cyrozap@gmail.com>
> ---
>  drivers/firewire/ohci.c | 29 +++++++++++++++++++----------
>  1 file changed, 19 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
> index 50d49dc09d69..1de17b33b10e 100644
> --- a/drivers/firewire/ohci.c
> +++ b/drivers/firewire/ohci.c
> @@ -75,14 +75,23 @@ struct descriptor {
>  #define COMMAND_PTR(regs)	((regs) + 12)
>  #define CONTEXT_MATCH(regs)	((regs) + 16)
>  
> +/*
> + * OHCI Specification, Release 1.1: 3.3.1 FIFO Implementation (informative)
> + *
> + * reqCount can be at most 65,532 (0xfffc) bytes, since it's quadlet-aligned
> + * (4-byte aligned) and limited to 16 bits.
> + */
> +#define REQ_COUNT_MAX 0xfffc
> +#define REQ_COUNT_SIZE (PAGE_SIZE >= REQ_COUNT_MAX ? REQ_COUNT_MAX : PAGE_SIZE)
> +
>  #define AR_BUFFER_SIZE	(32*1024)
> -#define AR_BUFFERS_MIN	DIV_ROUND_UP(AR_BUFFER_SIZE, PAGE_SIZE)
> +#define AR_BUFFERS_MIN	DIV_ROUND_UP(AR_BUFFER_SIZE, REQ_COUNT_SIZE)
>  /* we need at least two pages for proper list management */
>  #define AR_BUFFERS	(AR_BUFFERS_MIN >= 2 ? AR_BUFFERS_MIN : 2)
>  
> -#define MAX_ASYNC_PAYLOAD	4096
> +#define MAX_ASYNC_PAYLOAD	REQ_COUNT_SIZE
>  #define MAX_AR_PACKET_SIZE	(16 + MAX_ASYNC_PAYLOAD + 4)
> -#define AR_WRAPAROUND_PAGES	DIV_ROUND_UP(MAX_AR_PACKET_SIZE, PAGE_SIZE)
> +#define AR_WRAPAROUND_PAGES	DIV_ROUND_UP(MAX_AR_PACKET_SIZE, REQ_COUNT_SIZE)
>  
>  struct ar_context {
>  	struct fw_ohci *ohci;
> @@ -660,7 +669,7 @@ static void ar_context_link_page(struct ar_context *ctx, unsigned int index)
>  
>  	d = &ctx->descriptors[index];
>  	d->branch_address  &= cpu_to_le32(~0xf);
> -	d->res_count       =  cpu_to_le16(PAGE_SIZE);
> +	d->res_count       =  cpu_to_le16(REQ_COUNT_SIZE);
>  	d->transfer_status =  0;
>  
>  	wmb(); /* finish init of new descriptors before branch_address update */
> @@ -734,7 +743,7 @@ static unsigned int ar_search_last_active_buffer(struct ar_context *ctx,
>  		 * If the next descriptor is still empty, we must stop at this
>  		 * descriptor.
>  		 */
> -		if (next_res_count == cpu_to_le16(PAGE_SIZE)) {
> +		if (next_res_count == cpu_to_le16(REQ_COUNT_SIZE)) {
>  			/*
>  			 * The exception is when the DMA data for one packet is
>  			 * split over three buffers; in this case, the middle
> @@ -742,11 +751,11 @@ static unsigned int ar_search_last_active_buffer(struct ar_context *ctx,
>  			 * controller and look still empty, and we have to peek
>  			 * at the third one.
>  			 */
> -			if (MAX_AR_PACKET_SIZE > PAGE_SIZE && i != last) {
> +			if (MAX_AR_PACKET_SIZE > REQ_COUNT_SIZE && i != last) {
>  				next_i = ar_next_buffer_index(next_i);
>  				rmb();
>  				next_res_count = READ_ONCE(ctx->descriptors[next_i].res_count);
> -				if (next_res_count != cpu_to_le16(PAGE_SIZE))
> +				if (next_res_count != cpu_to_le16(REQ_COUNT_SIZE))
>  					goto next_buffer_is_active;
>  			}
>  
> @@ -760,8 +769,8 @@ static unsigned int ar_search_last_active_buffer(struct ar_context *ctx,
>  
>  	rmb(); /* read res_count before the DMA data */
>  
> -	*buffer_offset = PAGE_SIZE - le16_to_cpu(res_count);
> -	if (*buffer_offset > PAGE_SIZE) {
> +	*buffer_offset = REQ_COUNT_SIZE - le16_to_cpu(res_count);
> +	if (*buffer_offset > REQ_COUNT_SIZE) {
>  		*buffer_offset = 0;
>  		ar_context_abort(ctx, "corrupted descriptor");
>  	}
> @@ -1006,7 +1015,7 @@ static int ar_context_init(struct ar_context *ctx, struct fw_ohci *ohci,
>  
>  	for (i = 0; i < AR_BUFFERS; i++) {
>  		d = &ctx->descriptors[i];
> -		d->req_count      = cpu_to_le16(PAGE_SIZE);
> +		d->req_count      = cpu_to_le16(REQ_COUNT_SIZE);
>  		d->control        = cpu_to_le16(DESCRIPTOR_INPUT_MORE |
>  						DESCRIPTOR_STATUS |
>  						DESCRIPTOR_BRANCH_ALWAYS);



-- 
Stefan Richter
-======---== =-== --=-=
http://arcgraph.de/sr/


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
