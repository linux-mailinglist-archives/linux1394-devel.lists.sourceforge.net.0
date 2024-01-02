Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FF4B8216C6
	for <lists+linux1394-devel@lfdr.de>; Tue,  2 Jan 2024 04:55:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rKVsU-0007dA-Tx;
	Tue, 02 Jan 2024 03:55:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rKVsT-0007d2-2y
 for linux1394-devel@lists.sourceforge.net;
 Tue, 02 Jan 2024 03:55:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xtu5fnYjiNRMAjboSlP/RYM4DJQBVcWuSfRSYWtS7Ig=; b=g0SvWbMhjTsHxRYvfj8jiPD10W
 ZCGYqamveUBXAHTSATjDrzjkEYrCYFiGtrqKAtC7ylxQlRfsuNRA7WKj0D+RIiXiQ7A6H8Yr75vkA
 +0idgO9pBNtSzZ7/hjHA3ZD8+NUB0Vvu5igM3deVfSwzAq1Fu6txXjZagdXVkdsYhaUw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xtu5fnYjiNRMAjboSlP/RYM4DJQBVcWuSfRSYWtS7Ig=; b=gwJXo1v4EsmRlGEvhZQXVMoQiO
 GwB2qwM88zVwgRt7UHOiMC8aXZGOJmqu8jnLxam4kH57Vwg4RoAyYN4V1zAaHrjOWldBpLfflD1EE
 JWOTMYPYLsYet2k+YJHWr4Pq5bu50CbxD4WFivyhAFavHOOQlXFft6qewpz+GmXE+bu8=;
Received: from wout3-smtp.messagingengine.com ([64.147.123.19])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rKVsQ-0005z5-Ml for linux1394-devel@lists.sourceforge.net;
 Tue, 02 Jan 2024 03:55:40 +0000
Received: from compute7.internal (compute7.nyi.internal [10.202.2.48])
 by mailout.west.internal (Postfix) with ESMTP id BD4A33200CCA;
 Mon,  1 Jan 2024 22:55:25 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute7.internal (MEProxy); Mon, 01 Jan 2024 22:55:26 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1704167725; x=
 1704254125; bh=xtu5fnYjiNRMAjboSlP/RYM4DJQBVcWuSfRSYWtS7Ig=; b=M
 +hlsmwV6Ot1lbuzgVo8WDSd/F690g+htk9q9v8KRFns1RQXKO29KsA0TStUK2kkQ
 LBBi4NTqtgy8ELWYKsOggEPez9yqErfrHs293FtFJhcxIWHlKUA5NfR/7W1FKM/t
 DSIun06sCHDBaqyd9yM6AHnH9qyQ3zn9paRUi7KzoMz0Yt3yOsXOGLFkgxSCDuL/
 dLs7hFOef0z9PhJD9RcMT7wKzrT659QPdpFwNZuMi9hie9jtWh3gB/XI2O/6RfCB
 PTWimKDosgkI0LB8Njv3LURoWKgz21nKZgvD/5uxQto0ylUTxElrcpkI9nvQXEWD
 dWIGdu6V7Jovab2qTzITg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1704167725; x=1704254125; bh=xtu5fnYjiNRMAjboSlP/RYM4DJQB
 VcWuSfRSYWtS7Ig=; b=4mzICWGbr2/Ghz4dtdjxN3mXUqAF9gKenc/1zZwJHtPB
 mHQtoeb+AgGS6LTzs0qKH0IIB3sXVHbRbi9K153gvwbXKHdVPtq7wVC6uDOc/Oje
 FIy2yijP2yNwXZgapE7qrJqZzBu8wZdOLFzNrsnC8KAdZXEkhRBCdpAWbVh+NyRt
 PvNv9DqcQV/3Ltsv8XqW8o8dNVN02fzm4x/D1lzB1Z157aTj3pqIgDVoV4zKx4Hs
 m874+pEaetrGbrJiP98bfQeJgxBUt2OyI5ET4UZVYG7IZN+g//LuG/b+ankDz5dA
 1od7EuUdBCcGSmi7cmou5TacKt0G/knDQRNmGaos4Q==
X-ME-Sender: <xms:LImTZYYGub6MV00vuUJfSdbZrLX66npZFnkn_T7-4mme1LGJoi7N3Q>
 <xme:LImTZTZHIvDOf0LU-oVuVqyTJdhBq8JsOQD_wWYLReAvfaR_2dzdudSgfXJt28K7K
 Jm3kd1YUTsmgTru2E0>
X-ME-Received: <xmr:LImTZS8uu3srXsyZ7v1KoJ1S3hEihe6hkbI-Q08DwkHOKFs8GSAjXhVZxdDNIW9hS-qV1vyXHefb8rBvwUOgvNXFPFV3Eux6Vg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvdeguddgieeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepvfgrkhgr
 shhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhird
 hjpheqnecuggftrfgrthhtvghrnhephefhhfettefgkedvieeuffevveeufedtlefhjeei
 ieetvdelfedtgfefuedukeeunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpe
 hmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:LYmTZSpQaHQMhjLL1ubJrHdfhJE6pYWgyOxNmT-raeZdg84SQoegTg>
 <xmx:LYmTZTqia9dfCvoydY9hsd5H4rWjMMpttyVqQQab8tOpefrVQXUtaw>
 <xmx:LYmTZQTL8saVIzbLm6ddByOgjb9Oi1IL-gWG_C8FhvqGUFm8RnAM7g>
 <xmx:LYmTZUDp4Luo-GJB4SsBGhYSt3DEHSwfA4t6Sj4x8PCQpWvj7g_jqg>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 1 Jan 2024 22:55:22 -0500 (EST)
Date: Tue, 2 Jan 2024 12:55:19 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Mario Limonciello <mario.limonciello@amd.com>
Subject: Re: [PATCH] firewire: ohci: suppress unexpected system reboot in AMD
 Ryzen machines and ASM108x/VT630x PCIe cards
Message-ID: <20240102035519.GA46261@workstation.local>
Mail-Followup-To: Mario Limonciello <mario.limonciello@amd.com>,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 adamg@pobox.com, stable@vger.kernel.org,
 Jiri Slaby <jirislaby@kernel.org>,
 Tobias Gruetzmacher <tobias-lists@23.gs>
References: <20231229035735.11127-1-o-takashi@sakamocchi.jp>
 <af04e964-28b9-4c31-a2e2-93d8410b5e8b@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <af04e964-28b9-4c31-a2e2-93d8410b5e8b@amd.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Mario, On Fri, Dec 29, 2023 at 08:30:00PM -0600, Mario
 Limonciello wrote: > On 12/28/2023 21:57, Takashi Sakamoto wrote: > > @@ -3527,
 6
 +3534, 45 @@ static const struct fw_card_driver ohci_driver = { > > .sto [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.19 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [64.147.123.19 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1rKVsQ-0005z5-Ml
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
Cc: linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 linux1394-devel@lists.sourceforge.net, Jiri Slaby <jirislaby@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi Mario,

On Fri, Dec 29, 2023 at 08:30:00PM -0600, Mario Limonciello wrote:
> On 12/28/2023 21:57, Takashi Sakamoto wrote:
> > @@ -3527,6 +3534,45 @@ static const struct fw_card_driver ohci_driver = {
> >   	.stop_iso		= ohci_stop_iso,
> >   };
> > +// On PCI Express Root Complex in any type of AMD Ryzen machine, VIA VT6306/6307/6308 with Asmedia
> > +// ASM1083/1085 brings an inconvenience that read accesses to 'Isochronous Cycle Timer' register
> > +// (at offset 0xf0 in PCI I/O space) often causes unexpected system reboot. The mechanism is not
> > +// clear, since the read access to the other registers is enough safe; e.g. 'Node ID' register,
> > +// while it is probable due to detection of any type of PCIe error.
> > +#if IS_ENABLED(CONFIG_X86)
> > +
> > +#define PCI_DEVICE_ID_ASMEDIA_ASM108X	0x1080
> > +
> > +static bool detect_vt630x_with_asm1083_on_amd_ryzen_machine(const struct pci_dev *pdev,
> > +							    struct fw_ohci *ohci)
> > +{
> > +	const struct pci_dev *pcie_to_pci_bridge;
> > +	const struct cpuinfo_x86 *cinfo = &cpu_data(0);
> > +
> > +	// Detect any type of AMD Ryzen machine.
> > +	if (cinfo->x86_vendor != X86_VENDOR_AMD || cinfo->x86 < 0x17)
> > +		return false;
> 
> Maybe it's better to use X86_FEATURE_ZEN?

Indeed. We can use it under the condition branch for CONFIG_X86, like:

+       // Detect any type of AMD Ryzen machine.
+       if (!static_cpu_has(X86_FEATURE_ZEN))
+               return false;


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
