Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 45E7C3BC350
	for <lists+linux1394-devel@lfdr.de>; Mon,  5 Jul 2021 22:09:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1m0Utq-0007fb-Os; Mon, 05 Jul 2021 20:09:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <stefanr@s5r6.in-berlin.de>) id 1m0Uto-0007fJ-Ko
 for linux1394-devel@lists.sourceforge.net; Mon, 05 Jul 2021 20:09:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sJwADp0q7vNgBnEbVnitHn8XWduMkiUgiSZKW4Jc+24=; b=IgekPk0hWEUSQMATykFJs3ZQlX
 pBWEdPcEm8mk/hgjlxUJpIxBZZID3jLHyYW/ngE8syrd1Ef/oj20A7VY+bBcXmZd3MGwkPy9ffciC
 CceM0xyzccmUHzpV/msRG/ZOI+5RySx6EFUSTNn3y9aO39QCeMGLhvmjVvEASwZ2zzEw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sJwADp0q7vNgBnEbVnitHn8XWduMkiUgiSZKW4Jc+24=; b=gGeBimieZuMnwKkfnNKRxYuR2N
 PXsT+OYrb4EmJWWgndMBkAIvbb4jYc8leh++VS0TAbH3IgfB15vnwpzk6LmTgBHyPgTwB4UoOLpwx
 EXuOKqdTNRy6AtYCU/J4X4tREkKRNBzGFdC7hHEgAwwJjVje3LI+SeU4cQmbVzXG4r9A=;
Received: from einhorn.in-berlin.de ([192.109.42.8]
 helo=einhorn-mail-out.in-berlin.de)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m0Utj-0006aC-7g
 for linux1394-devel@lists.sourceforge.net; Mon, 05 Jul 2021 20:09:00 +0000
X-Envelope-From: stefanr@s5r6.in-berlin.de
Received: from authenticated.user (localhost [127.0.0.1]) by
 einhorn.in-berlin.de with ESMTPSA id 165JkjlC005959
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
 Mon, 5 Jul 2021 21:46:45 +0200
Date: Mon, 5 Jul 2021 21:46:45 +0200
From: Stefan Richter <stefanr@s5r6.in-berlin.de>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Subject: Re: [PATCH] firewire: nosy: switch from 'pci_' to 'dma_' API
Message-ID: <20210705214645.04bca11a@kant>
In-Reply-To: <e1d7fa558f31abf294659a9d4edcc1e4fc065fab.1623590706.git.christophe.jaillet@wanadoo.fr>
References: <e1d7fa558f31abf294659a9d4edcc1e4fc065fab.1623590706.git.christophe.jaillet@wanadoo.fr>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.109.42.8 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1m0Utj-0006aC-7g
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
Cc: greg@kroah.com, linux1394-devel@lists.sourceforge.net,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Jun 13 Christophe JAILLET wrote:
> The wrappers in include/linux/pci-dma-compat.h should go away.
> 
> The patch has been generated with the coccinelle script below and has been
> hand modified to replace GFP_ with a correct flag.
> It has been compile tested.
> 
> When memory is allocated in 'add_card()', GFP_KERNEL can be used because
> this flag is already used a few lines above and no lock is taken in the
> between.
> 
> While at it, also remove some useless casting.
[...]
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>

Thanks.
Committed to linux1394.git.

> ---
> If needed, see post from Christoph Hellwig on the kernel-janitors ML:
>    https://marc.info/?l=kernel-janitors&m=158745678307186&w=4
> ---
>  drivers/firewire/nosy.c | 43 +++++++++++++++++++++++------------------
>  1 file changed, 24 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/firewire/nosy.c b/drivers/firewire/nosy.c
> index 88ed971e32c0..b0d671db178a 100644
> --- a/drivers/firewire/nosy.c
> +++ b/drivers/firewire/nosy.c
> @@ -511,12 +511,12 @@ remove_card(struct pci_dev *dev)
>  		wake_up_interruptible(&client->buffer.wait);
>  	spin_unlock_irq(&lynx->client_list_lock);
>  
> -	pci_free_consistent(lynx->pci_device, sizeof(struct pcl),
> -			    lynx->rcv_start_pcl, lynx->rcv_start_pcl_bus);
> -	pci_free_consistent(lynx->pci_device, sizeof(struct pcl),
> -			    lynx->rcv_pcl, lynx->rcv_pcl_bus);
> -	pci_free_consistent(lynx->pci_device, PAGE_SIZE,
> -			    lynx->rcv_buffer, lynx->rcv_buffer_bus);
> +	dma_free_coherent(&lynx->pci_device->dev, sizeof(struct pcl),
> +			  lynx->rcv_start_pcl, lynx->rcv_start_pcl_bus);
> +	dma_free_coherent(&lynx->pci_device->dev, sizeof(struct pcl),
> +			  lynx->rcv_pcl, lynx->rcv_pcl_bus);
> +	dma_free_coherent(&lynx->pci_device->dev, PAGE_SIZE, lynx->rcv_buffer,
> +			  lynx->rcv_buffer_bus);
>  
>  	iounmap(lynx->registers);
>  	pci_disable_device(dev);
> @@ -532,7 +532,7 @@ add_card(struct pci_dev *dev, const struct pci_device_id *unused)
>  	u32 p, end;
>  	int ret, i;
>  
> -	if (pci_set_dma_mask(dev, DMA_BIT_MASK(32))) {
> +	if (dma_set_mask(&dev->dev, DMA_BIT_MASK(32))) {
>  		dev_err(&dev->dev,
>  		    "DMA address limits not supported for PCILynx hardware\n");
>  		return -ENXIO;
> @@ -564,12 +564,16 @@ add_card(struct pci_dev *dev, const struct pci_device_id *unused)
>  		goto fail_deallocate_lynx;
>  	}
>  
> -	lynx->rcv_start_pcl = pci_alloc_consistent(lynx->pci_device,
> -				sizeof(struct pcl), &lynx->rcv_start_pcl_bus);
> -	lynx->rcv_pcl = pci_alloc_consistent(lynx->pci_device,
> -				sizeof(struct pcl), &lynx->rcv_pcl_bus);
> -	lynx->rcv_buffer = pci_alloc_consistent(lynx->pci_device,
> -				RCV_BUFFER_SIZE, &lynx->rcv_buffer_bus);
> +	lynx->rcv_start_pcl = dma_alloc_coherent(&lynx->pci_device->dev,
> +						 sizeof(struct pcl),
> +						 &lynx->rcv_start_pcl_bus,
> +						 GFP_KERNEL);
> +	lynx->rcv_pcl = dma_alloc_coherent(&lynx->pci_device->dev,
> +					   sizeof(struct pcl),
> +					   &lynx->rcv_pcl_bus, GFP_KERNEL);
> +	lynx->rcv_buffer = dma_alloc_coherent(&lynx->pci_device->dev,
> +					      RCV_BUFFER_SIZE,
> +					      &lynx->rcv_buffer_bus, GFP_KERNEL);
>  	if (lynx->rcv_start_pcl == NULL ||
>  	    lynx->rcv_pcl == NULL ||
>  	    lynx->rcv_buffer == NULL) {
> @@ -667,14 +671,15 @@ add_card(struct pci_dev *dev, const struct pci_device_id *unused)
>  
>  fail_deallocate_buffers:
>  	if (lynx->rcv_start_pcl)
> -		pci_free_consistent(lynx->pci_device, sizeof(struct pcl),
> -				lynx->rcv_start_pcl, lynx->rcv_start_pcl_bus);
> +		dma_free_coherent(&lynx->pci_device->dev, sizeof(struct pcl),
> +				  lynx->rcv_start_pcl,
> +				  lynx->rcv_start_pcl_bus);
>  	if (lynx->rcv_pcl)
> -		pci_free_consistent(lynx->pci_device, sizeof(struct pcl),
> -				lynx->rcv_pcl, lynx->rcv_pcl_bus);
> +		dma_free_coherent(&lynx->pci_device->dev, sizeof(struct pcl),
> +				  lynx->rcv_pcl, lynx->rcv_pcl_bus);
>  	if (lynx->rcv_buffer)
> -		pci_free_consistent(lynx->pci_device, PAGE_SIZE,
> -				lynx->rcv_buffer, lynx->rcv_buffer_bus);
> +		dma_free_coherent(&lynx->pci_device->dev, PAGE_SIZE,
> +				  lynx->rcv_buffer, lynx->rcv_buffer_bus);
>  	iounmap(lynx->registers);
>  
>  fail_deallocate_lynx:



-- 
Stefan Richter
-======--=-= -=== --=-=
http://arcgraph.de/sr/


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
