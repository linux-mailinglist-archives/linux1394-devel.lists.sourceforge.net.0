Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E10E986DAC9
	for <lists+linux1394-devel@lfdr.de>; Fri,  1 Mar 2024 05:41:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rfuhP-0006x6-7D;
	Fri, 01 Mar 2024 04:40:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rfuhO-0006wx-5X
 for linux1394-devel@lists.sourceforge.net;
 Fri, 01 Mar 2024 04:40:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=t+0LCCnylFWGOL0cTpGX07pXW7Ru0wa45ziXluF9lCI=; b=m62EGKnMWNoEmy4UZzWqqzwi+s
 UnpBWiNdNAwSzZnSMmlTsf8XBeu/mzLCnpGdGLkkk+Y+AOnShXihwevOLOWfEz9XSZiXboPD/GvMN
 uwHQBnAT8zyy1YtX6FxRNbQ9FlVVAhBfDSgqhN9D5UBOBUh8g3dZxyfx7N3cJdnmEqZo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=t+0LCCnylFWGOL0cTpGX07pXW7Ru0wa45ziXluF9lCI=; b=POOXIo9P/Qr1zM9jVetuDe4ECE
 1ZW2RJ2iWht7bKjEdYAcfxfle8xORML5o2QF+xzpFMuopR1jKl7zI9/iDPLD09pqOuzd0ps6cmRxB
 cGXpA9wdiCP17m4tWtxuRZ5booTHqzlopoLEw0P4nM1Xz/A8WCI+phwPCtORDQE9HPBI=;
Received: from wfhigh8-smtp.messagingengine.com ([64.147.123.159])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rfuhM-0003wP-Mz for linux1394-devel@lists.sourceforge.net;
 Fri, 01 Mar 2024 04:40:42 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailfhigh.west.internal (Postfix) with ESMTP id F056318000C6;
 Thu, 29 Feb 2024 23:40:28 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Thu, 29 Feb 2024 23:40:29 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1709268028; x=
 1709354428; bh=t+0LCCnylFWGOL0cTpGX07pXW7Ru0wa45ziXluF9lCI=; b=A
 xbSsUzGCTH12b2anb/clgYUCcSYQOa6EU1lRRMSZp3GvLwloBYUM5yej62rq7clM
 b6uI+Hp2oXFsJLSAnikVUj8r/iuxqh6qK058utFw8NiVbsoD8VPiCYCXWg1EM9Xc
 lKrQwhVZ6c5Upxzlw0XjHg9K/JC4aJNX90T8bMXosF71mZWwr1qBRP0OGL8hSuFi
 JS7Ztbpk3AOTTwQSLg9lk9wFqQlmwF5rzJ4yS6oXt6l9FS2VWC8vAaezSw80EUXK
 5QiRu0hItRjDnGdv86w+CZrVtM2LN4fIyiLLHRaTVUrJz7IaptnUi/sea24MgJRG
 k1Iy90cRvoVL5HRFf5PpA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; t=1709268028; x=1709354428; bh=t+0LCCnylFWGOL0cTpGX07pXW7Ru
 0wa45ziXluF9lCI=; b=ZY1I6DiQvZW5VlKAM1xcsgoq0m5kEH5kJv73rEP/RWZU
 cu6Xzig4tYZWVZhZ2vVJXgUX7D/n+AU0FVzp15PLdKM39b4TkZVXiyEMknjODuuS
 ZRp0ljKRgho2CCxHktLUycGDdogbxy2INpnShgKczAnKjfSPn4+LuLBabkWWlufO
 6sLeT7zmsE7Pu0/gsolRddU3y5L88DsepCw2wpNhTnc5BJ5GWQEQ9/7FFnIjpOWd
 Kd/B4CTFbKjIZk3q6IWzNlhBkN3KQLhSyQLBndjsfjCXYa0GPDoRnmZBGrUUcKp9
 C0P/8bfbHIDW75ayO1E/cVAJ3Fw1aKgv1A7jQTOVKw==
X-ME-Sender: <xms:PFzhZTCkr49bNpd3P-UcDp29tmfb5QyO-Yg8eLX2pBKoHTUNQDvrLw>
 <xme:PFzhZZgkgj8J1LPecSVqZykVJCE3p8Oeh9MvBZy76qXDQ7Y_z_w3XqNtUCli-FXtT
 7kP3hy2rpXs-bYJ8_k>
X-ME-Received: <xmr:PFzhZel8ynp6DV7Yyzzc8wongwyNJgsTg1mDQ7LbPbKdupDD1QVES54rhOJQNJ_4kVfBGSNAQxuWshyvzPpy-xZPQ_VVROXc3w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrhedtgdejudcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvvefukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefvrghkrghs
 hhhiucfurghkrghmohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjh
 hpqeenucggtffrrghtthgvrhhnpeevieelhfdukeffheekffduudevvdefudelleefgeei
 leejheejuedvgefhteevvdenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecuvehluh
 hsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:PFzhZVzxH66IO0uLfHMuxLd4nfOIsM8rIzVTHuiUk69AP6SuSqVq9Q>
 <xmx:PFzhZYQwhlvBNvb3c76Exv_DNvyaRr6t0gk14NcJ00COsEahgRmjhA>
 <xmx:PFzhZYbcTzoNbaJAgS-bPrR2cc3b9VWAyNF68IelqHqgSATrU51_jw>
 <xmx:PFzhZecMSR27E9JyIHPzJXArfmFhWm7jexwdou8QInh7qUoYGZvQ1cA30rE>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 29 Feb 2024 23:40:26 -0500 (EST)
Date: Fri, 1 Mar 2024 13:40:24 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Edmund Raile <edmund.raile@proton.me>
Subject: Re: [PATCH v2] firewire: ohci: prevent leak of left-over IRQ on unbind
Message-ID: <20240301044024.GA37429@workstation.local>
Mail-Followup-To: Edmund Raile <edmund.raile@proton.me>,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
References: <20240229101236.8074-1-edmund.raile@proton.me>
 <20240229144723.13047-2-edmund.raile@proton.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240229144723.13047-2-edmund.raile@proton.me>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, Thanks for your taking the issue, and sending the patch.
 But I have a concern about the change, since the allocated IRQ should be
 released as the part of managed device resource[1]:
 (include/linux/interrupt.h)
 devm_request_irq() (kernel/irq/devres.c) ->devm_request_threaded_irq()
 ->devres_alloc(devm_irq_release)
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rfuhM-0003wP-Mz
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
Cc: linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

Thanks for your taking the issue, and sending the patch. But I have a
concern about the change, since the allocated IRQ should be released as
the part of managed device resource[1]:

(include/linux/interrupt.h)
devm_request_irq()
  (kernel/irq/devres.c)
  ->devm_request_threaded_irq()
    ->devres_alloc(devm_irq_release)

(kernel/irq/devres.c)
devrm_irq_release()
->free_irq()

In my opinion, the devres mechanism releases the allocated memory when
releasing the data of associated device structure. In our case, it is
the data of pci_dev structure (precisely, the data of device structure
embedded in it). In the call trace of your commit comment, the release
should be done in:

(drivers/base/dd.c)
device_release_driver_internal()
->__device_release_driver()
  ->device_unbind_cleanup()
    (drivers/base/devres.c)
    ->devres_release_all(dev);
      ->release_nodes()
        (kernel/irq/devres.c)
	->free_irq()

However, you encounter the leak actually. I think we have another cause
for the leak, but never figured it out. Anyway, I'll further investigate
the issue.


[1] https://docs.kernel.org/driver-api/driver-model/devres.html

On Thu, Feb 29, 2024 at 02:47:59PM +0000, Edmund Raile wrote:
> 
> Commit 5a95f1ded28691e6 ("firewire: ohci: use devres for requested IRQ")
> also removed the call to free_irq() in pci_remove(), leading to a
> leftover irq of devm_request_irq() at pci_disable_msi() in pci_remove()
> when unbinding the driver from the device
> 
> remove_proc_entry: removing non-empty directory 'irq/136', leaking at
> least 'firewire_ohci'
> Call Trace:
>  ? remove_proc_entry+0x19c/0x1c0
>  ? __warn+0x81/0x130
>  ? remove_proc_entry+0x19c/0x1c0
>  ? report_bug+0x171/0x1a0
>  ? console_unlock+0x78/0x120
>  ? handle_bug+0x3c/0x80
>  ? exc_invalid_op+0x17/0x70
>  ? asm_exc_invalid_op+0x1a/0x20
>  ? remove_proc_entry+0x19c/0x1c0
>  unregister_irq_proc+0xf4/0x120
>  free_desc+0x3d/0xe0
>  ? kfree+0x29f/0x2f0
>  irq_free_descs+0x47/0x70
>  msi_domain_free_locked.part.0+0x19d/0x1d0
>  msi_domain_free_irqs_all_locked+0x81/0xc0
>  pci_free_msi_irqs+0x12/0x40
>  pci_disable_msi+0x4c/0x60
>  pci_remove+0x9d/0xc0 [firewire_ohci
>      01b483699bebf9cb07a3d69df0aa2bee71db1b26]
>  pci_device_remove+0x37/0xa0
>  device_release_driver_internal+0x19f/0x200
>  unbind_store+0xa1/0xb0
> 
> remove irq with devm_free_irq() before pci_disable_msi()
> also remove it in fail_msi: of pci_probe() as this would lead to
> an identical leak
> 
> Fixes: 5a95f1ded28691e6 ("firewire: ohci: use devres for requested IRQ")
> 
> Signed-off-by: Edmund Raile <edmund.raile@proton.me>
> 
> ---
> 
> Using FW643 with vfio-pci required unbinding from firewire_ohci,
> doing so currently produces a memory leak due to a leftover irq
> which this patch removes.
> 
> The irq can be observed while the driver is loaded and bound:
> find /proc/irq -type d -name "firewire_ohci"
> 
> Is it a good idea to submit a patch to devm_request_irq() in
> include/linux/interrupt.h to add the function comment
> /*
>  * counterpart: devm_free_irq()
>  */
> so LSPs show that hint?
> 
> v2 change: corrected patch title
> 
>  drivers/firewire/ohci.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
> index 9db9290c3269..7bc71f4be64a 100644
> --- a/drivers/firewire/ohci.c
> +++ b/drivers/firewire/ohci.c
> @@ -3773,6 +3773,7 @@ static int pci_probe(struct pci_dev *dev,
>  	return 0;
>  
>   fail_msi:
> +	devm_free_irq(&dev->dev, dev->irq, ohci);
>  	pci_disable_msi(dev);
>  
>  	return err;
> @@ -3800,6 +3801,7 @@ static void pci_remove(struct pci_dev *dev)
>  
>  	software_reset(ohci);
>  
> +	devm_free_irq(&dev->dev, dev->irq, ohci);
>  	pci_disable_msi(dev);
>  
>  	dev_notice(&dev->dev, "removing fw-ohci device\n");
> -- 
> 2.43.0


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
