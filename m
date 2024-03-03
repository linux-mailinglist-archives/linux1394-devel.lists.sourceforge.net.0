Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B8B2686F37B
	for <lists+linux1394-devel@lfdr.de>; Sun,  3 Mar 2024 04:14:04 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rgcIN-0000fM-0X;
	Sun, 03 Mar 2024 03:13:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rgcIK-0000fA-Px
 for linux1394-devel@lists.sourceforge.net;
 Sun, 03 Mar 2024 03:13:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=x/zIFvm0CQkbS31nHrROpDnZxIitaOxufuuqemOeeoA=; b=hovGikmGlCpYJZXStNh1VbPu1z
 BogJnFXU0HEs/eXH4BuaFj/BuTIWXLSRF4/F+/bF6NTF9w8bHz0PZlA90NbAn4CZM55DnLZMWqrVq
 h4TWo/XdFK4/hoRTrUfSbNdfl29GHvndQgIj7GfLjSaSPpaxstcAdiPhmoheoJkQ7vDg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=x/zIFvm0CQkbS31nHrROpDnZxIitaOxufuuqemOeeoA=; b=AjebY/04oJSAKdX5bgs1YaD8Zq
 Sja1bPKZBBjGtV2UPjMA9xpdnppH/zPJw3kKKwT/EJLqmE0HX+O2b6Hi1SdVfbzMrIYw9spY0lW9i
 NsYnGK8hR2f4DYk2xUbPCCqA3x+kn37GoBgA8pMVyzs5I+PpgnyYAEEuKdYXfHTcpI6s=;
Received: from wfout5-smtp.messagingengine.com ([64.147.123.148])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rgcIA-0005BY-Ft for linux1394-devel@lists.sourceforge.net;
 Sun, 03 Mar 2024 03:13:44 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailfout.west.internal (Postfix) with ESMTP id 5E39E1C00098;
 Sat,  2 Mar 2024 22:13:29 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Sat, 02 Mar 2024 22:13:29 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1709435608; x=
 1709522008; bh=x/zIFvm0CQkbS31nHrROpDnZxIitaOxufuuqemOeeoA=; b=g
 56thN9yMkrws8xGyDaGSKHwVuZ4kMUecPnU9XKzKRdUVT5HHdPo6MMHWQhwIl549
 rfjsRKUOFSUCKHKjOLcYALf3EspIK68zveN/GQeIzeDZtws04UDe0wYh4cghDrkS
 kb2pngkCtrpXb/NTEAzoXnDAqG5oFRbSSRMb8F6IKFE4jFKlHcEhqL0SmGLkui5w
 vkalvzFuPFuC3AFxGo63CxfeBO0zzk1zDKVf7uAMsNet8NOdi19gnzOnTqYOipW7
 lHXLYMVJS+iG9a0d7sDSccIVmXtqVOWaeDrjRhKtMrgT0OdoGHVVJdA+KbGGWadV
 B/ecHVBZAuXGFrwH/gTXw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; t=1709435608; x=1709522008; bh=x/zIFvm0CQkbS31nHrROpDnZxIit
 aOxufuuqemOeeoA=; b=JZdoEKmB78qtyOaP7kvcwVp6bLWPdKc9aK+tuHZomHw0
 i4ZFp9QzPXGCbj6tq2xPHEwcxnv9REjmxXxwb6ieyqTXDxh+aIbCJHNt9+3N5vbq
 uvhjalEPVQ7ZmuGm3cL/pObjQg2saOb94O1rC1e/8QB/4ukGMWFgO6gac4MQBteq
 Rrl9bFcOI2DjdD4GWTo7bbqTTqDykpkFwuuYKzTx49wzpPaeXZ1s0oQaXZ/BpkYy
 ehAG/+AKK5UXHxaW14JNdv1ml11i3L4EuOYGi5S9fyMbz+dilB668iZ8BPY/gJiu
 FWVQFq+l9aA98RxvSyOTAvBmYuEk+E8a0XgJ/mvwFQ==
X-ME-Sender: <xms:2OrjZXlwGxJF_8Z5amfKDFqZSNuOzTJ2dB6xRhkAbKHwpZGn1fby4A>
 <xme:2OrjZa21PULy0HF1GaehZsaC94EKFG87JzlhhX55y3yxe2HKwEpfTuJhRwvwLIgKW
 w73fWeW77d6oUl8D8s>
X-ME-Received: <xmr:2OrjZdogXB6XBSzJHgSbq0qhfd-xYQAAT7MOuah2uxSlzw5RRx25i_2OefLJTqK-zZ8sTbAfsId0QoI650tUf4A0EA7Dje_nrqE>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrheeggdehhecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvvefukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefvrghkrghs
 hhhiucfurghkrghmohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjh
 hpqeenucggtffrrghtthgvrhhnpeevieelhfdukeffheekffduudevvdefudelleefgeei
 leejheejuedvgefhteevvdenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecuvehluh
 hsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:2OrjZflEmUzagsRxaRlUVzpGCObR0XckM0DrbTjw7Q75jzn3X2gs2A>
 <xmx:2OrjZV3YCREY7mQnLSTab-FxMyRat9ZH9i2tQ-rBGpMhSIsTtZxB-g>
 <xmx:2OrjZetJN7bqh_FmkurZoaHIvXSNFNgE_P0z5meYi8bOSsceHI9fSQ>
 <xmx:2OrjZQTZBWIyxiXJsXwsyLeMVz-c-tbwfCJL4j80vDc2r8lqXJFn6yFEGHM>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 2 Mar 2024 22:13:27 -0500 (EST)
Date: Sun, 3 Mar 2024 12:13:25 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Edmund Raile <edmund.raile@proton.me>
Subject: Re: [PATCH v2] firewire: ohci: prevent leak of left-over IRQ on unbind
Message-ID: <20240303031325.GA40441@workstation.local>
Mail-Followup-To: Edmund Raile <edmund.raile@proton.me>,
 linux-kernel@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 linux-pci@vger.kernel.org
References: <20240229101236.8074-1-edmund.raile@proton.me>
 <20240229144723.13047-2-edmund.raile@proton.me>
 <20240301044024.GA37429@workstation.local>
 <wrcvrmxqfy2zfpbcgoy4txqmzcoyptzvctzymztlp55gasu2fg@tyudozxoyvzo>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <wrcvrmxqfy2zfpbcgoy4txqmzcoyptzvctzymztlp55gasu2fg@tyudozxoyvzo>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, (C.C.ed to the list of PCI SUBSYSTEM.) On Sat, Mar 02,
 2024 at 04:52:06PM +0000, Edmund Raile wrote: > > In my opinion, the devres
 mechanism releases the allocated memory when > > releasing the data of
 associated device structure. > > devi [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rgcIA-0005BY-Ft
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
Cc: linux-pci@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

(C.C.ed to the list of PCI SUBSYSTEM.)

On Sat, Mar 02, 2024 at 04:52:06PM +0000, Edmund Raile wrote:
> > In my opinion, the devres mechanism releases the allocated memory when
> > releasing the data of associated device structure.
> > device_release_driver_internal()
> > ->__device_release_driver()
> >   ->device_unbind_cleanup()
> >     (drivers/base/devres.c)
> >     ->devres_release_all(dev);
> >       ->release_nodes()
> >         (kernel/irq/devres.c)
> > 	->free_irq()
> 
> Looking at __device_release_driver() in drivers/base/dd.c,
> device_remove() gets called, leading to dev->bus->remove(dev),
> which likely calls our good old friend from the call trace:
> pci_device_remove().
> 
> > > Call Trace:
> > >  ? remove_proc_entry+0x19c/0x1c0
> > >  ? __warn+0x81/0x130
> > >  ? remove_proc_entry+0x19c/0x1c0
> > >  ? report_bug+0x171/0x1a0
> > >  ? console_unlock+0x78/0x120
> > >  ? handle_bug+0x3c/0x80
> > >  ? exc_invalid_op+0x17/0x70
> > >  ? asm_exc_invalid_op+0x1a/0x20
> > >  ? remove_proc_entry+0x19c/0x1c0
> > >  unregister_irq_proc+0xf4/0x120
> > >  free_desc+0x3d/0xe0
> > >  ? kfree+0x29f/0x2f0
> > >  irq_free_descs+0x47/0x70
> > >  msi_domain_free_locked.part.0+0x19d/0x1d0
> > >  msi_domain_free_irqs_all_locked+0x81/0xc0
> > >  pci_free_msi_irqs+0x12/0x40
> > >  pci_disable_msi+0x4c/0x60
> > >  pci_remove+0x9d/0xc0 [firewire_ohci
> > >      01b483699bebf9cb07a3d69df0aa2bee71db1b26]
> > >  pci_device_remove+0x37/0xa0
> > >  device_release_driver_internal+0x19f/0x200
> > >  unbind_store+0xa1/0xb0
> 
> Then in ohci.c's pci_remove(), we kill the MSIs, which leads to
> the removal of the IRQ, etc.
> Back in __device_release_driver(), after device_remove(),
> device_unbind_cleanup() is called, leading to free_irq(), but too late.
> 
> I think the order of these calls may be our issue but I doubt it
> has been done like this without good reason.
> That code is 8 years old, someone would have noticed if it had an error.

Now I got the point. Before optimizing to device managing resource, the
1394 OHCI driver called `free_irq()` then `pci_disable_msi()` in the
.remove() callback. So the issue did not occur. At present, the order is
reversed, as you find.

To be honestly, I have little knowledge about current implementation of
PCIe MSI operation and the current best-practice in Linux PCI subsystem.
I've just replaced the old implementation of the driver with the
relevant APIs, so I need to consult someone about the issue.

> I could be entirely wrong but the function description in
> /kernel/irq/devres.c tells me that function is meant to be used:
> 
> > Except for the extra @dev argument, this function takes the
> > same arguments and performs the same function as free_irq().
> > This function instead of free_irq() should be used to manually
> > free IRQs allocated with devm_request_irq().
> 
> And while devm_request_irq() has no function description of its own, its
> sister devm_request_threaded_irq() mentions this:
> 
> > IRQs requested with this function will be
> > automatically freed on driver detach.
> > 
> > If an IRQ allocated with this function needs to be freed
> > separately, devm_free_irq() must be used.
> 
> Should we pull in the maintainers of dd.c for their opinion?
> 
> Thank you very much for all the very hard work you do Sakamoto-Sensei!

Indeed. If the current implementation of PCIe MSI requires the call of
`free_irq()` (or something) before calling `pci_disable_msi()`, it
should be documented. But we can also see the `pci_disable_msi()` is
legacy API in PCIe MSI implementation[1]. I guess that the extra care of
order to call these two functions would be useless nowadays by some
enhancement.


[1] https://docs.kernel.org/PCI/msi-howto.html#legacy-apis

Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
