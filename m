Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A205891512
	for <lists+linux1394-devel@lfdr.de>; Fri, 29 Mar 2024 09:12:53 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rq7Lr-0007yp-26;
	Fri, 29 Mar 2024 08:12:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rq7Lo-0007yb-T7
 for linux1394-devel@lists.sourceforge.net;
 Fri, 29 Mar 2024 08:12:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mGbMxmuqKfJn9+1lZlv1xn4BUNJLFRwqYHpGktJGTm8=; b=HuNb7qwevNlOQmVlfHSYSVpW2k
 jlCwcyNJ9krhIeG5vUQpxLe9TOp7U9AhYYrA+lkRak9vAgzXOLSpIJ3Xnsml2qoIaNHPy2shaSP2i
 a3T4HJg3xbgN1TdhI9foXx6CddZroZEYVQrL0k8ok2kLVG1NG/903HEBvR82TsLE5XwE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mGbMxmuqKfJn9+1lZlv1xn4BUNJLFRwqYHpGktJGTm8=; b=NIqDl9a6eeHLdq7blGpJnAQtS7
 ZbQKYriI281M+48b8Sh7LInk3eYFfJ4pw9r6OzNUr/kppxcR+EbRhF3BWxTyCSVq8bbMmMelqAwu7
 FPZDW4cnrx3JoVrQfEpgEzePig7FGFPxUWq+T6qVM1M80YQzpUulOyZxicvtktCjgeKM=;
Received: from wfout4-smtp.messagingengine.com ([64.147.123.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rq7Lm-0005hK-Vx for linux1394-devel@lists.sourceforge.net;
 Fri, 29 Mar 2024 08:12:37 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailfout.west.internal (Postfix) with ESMTP id 04C0D1C00096;
 Fri, 29 Mar 2024 04:12:23 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Fri, 29 Mar 2024 04:12:24 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1711699943; x=
 1711786343; bh=mGbMxmuqKfJn9+1lZlv1xn4BUNJLFRwqYHpGktJGTm8=; b=E
 VPV/Z536MxDpTAti5+98oth5eMCqlrinUYmoD0OdGzeCIqXTY/6GuYTPedMGQ/5R
 CBYi/MLCBMQG8EdPogPTv24EWVhaS4W5Y9sje9GI6pedd+kSPop3jU8pzM4yHTh+
 yBce4R6oycxD9VKOsg0/f8OKKyCsygt2qd6u/bMSBR8qqQ1EzvsRvPru03isvKbX
 7GtUHIFZuMCqEsRfBfP6jRVLorOFoq4DxKTBVfJIXRWHXu0xwO3V2JoUK/n+MswI
 d0xpwSs/UtvIMLtd6ai8Z2H4Hsc6FHRCFjIEbBThw7xe03JCvDiHzLuErFcGr+pc
 dRBO3+jNgYZSzp1ShBlBw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1711699943; x=1711786343; bh=mGbMxmuqKfJn9+1lZlv1xn4BUNJL
 FRwqYHpGktJGTm8=; b=OGtfgx4vnb3U/h0pe89Dd8vyXHLUhdEj9iRfF4Xa2CNi
 8rmK8ecLmWZjLZr7kn+r23oR6Yysu3w0vIp9ytL/Vyz2luA0mj8B5HQg1XpFVK0J
 sXqHi4Bcodnz577N41DNJPZHq6rq/tUrwMgcc1tiNs1fth+qHhFJFZ5pTU/3Q0eo
 QH8E7LRfXeGhTKbkZsgLcsWRJEPa+DZMlJ7lCcYkIjOXjelhaJsWp2tLN0zUq5SU
 l1aC+TbE1NZ60t+Ws/rC9NKPdrRVQAQPEAE9IVhYs+CSjnpNpLkKIlcvYY8t6iyI
 Tvv5iYykbF9yXdoR/zHgYe3rOJDvGmIWOQ+W0P0d1A==
X-ME-Sender: <xms:5ncGZq1DUULsxdDhEWlcS-0neOxHxeTUe55yBLD4hvOAcSUisVulEA>
 <xme:5ncGZtFa2fCYYNYQZdAdtjAA6UXN5iPX-bCIJKK9m3XLxpLyWXq-qXHxSJN8YIcYb
 wci6oUFJttAja_ahKY>
X-ME-Received: <xmr:5ncGZi7JL8J3xLcV3VPGUBAlJ-xVJC-XTdlFM5kTh7uobClUx7AHV3Vg6NsyL4GJOBwh1qcJEvgCdpIR65poXjNBadK4ue14jA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledruddvtddgieefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepvfgrkhgr
 shhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhird
 hjpheqnecuggftrfgrthhtvghrnhephefhhfettefgkedvieeuffevveeufedtlefhjeei
 ieetvdelfedtgfefuedukeeunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpe
 hmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:5ncGZr1oYzySfu_4WhI9hmzcV_1hbgnq8g6XCq5p5jk9_0yw7BmwKg>
 <xmx:5ncGZtEq7bb6fKTmBBifN6as-DtxmqfM8tdU9XYHMsfaJFzsm3zi1A>
 <xmx:5ncGZk-dBS-7_NTCiEAWymagpFm-NM3Inlic0oaoagf6Jk7HMcNx0w>
 <xmx:5ncGZimGKgpLnZLdkGMZkAtXVqgnpPp7NjquYyrP30dmWDiw4_iOxw>
 <xmx:53cGZjZZO05cvod-of-X52Sujh3pBa2sU2WASYE21WgVDbTw0u9myQ5_rUs>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 29 Mar 2024 04:12:21 -0400 (EDT)
Date: Fri, 29 Mar 2024 17:12:19 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Lukas Wunner <lukas@wunner.de>
Subject: Re: [PATCH v2] PCI: Mark LSI FW643 to avoid bus reset
Message-ID: <20240329081219.GC231329@workstation.local>
Mail-Followup-To: Lukas Wunner <lukas@wunner.de>,
 Alex Williamson <alex.williamson@redhat.com>,
 Bjorn Helgaas <helgaas@kernel.org>,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, edmund.raile@proton.me
References: <20240326131858.GA140624@workstation.local>
 <20240327150119.GA1502858@bhelgaas>
 <20240328144201.510f6d5e.alex.williamson@redhat.com>
 <ZgZGbMj0I3_6Rt0f@wunner.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZgZGbMj0I3_6Rt0f@wunner.de>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Lukas, On Fri, Mar 29, 2024 at 05:41:16AM +0100, Lukas
 Wunner wrote: > On Thu, Mar 28, 2024 at 02:42:01PM -0600, Alex Williamson
 wrote: > > On Wed, 27 Mar 2024 10:01:19 -0500 Bjorn Helgaas <helgaas@kernel.or
 [...] Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.147 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1rq7Lm-0005hK-Vx
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
Cc: linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 Alex Williamson <alex.williamson@redhat.com>,
 Bjorn Helgaas <helgaas@kernel.org>, edmund.raile@proton.me,
 linux1394-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi Lukas,

On Fri, Mar 29, 2024 at 05:41:16AM +0100, Lukas Wunner wrote:
> On Thu, Mar 28, 2024 at 02:42:01PM -0600, Alex Williamson wrote:
> > On Wed, 27 Mar 2024 10:01:19 -0500 Bjorn Helgaas <helgaas@kernel.org> wrote:
> > The original patch proposed for this gave me the impression that this
> > was a device used on various old Mac systems, not likely applicable to
> > a general purpose plug-in card.
> 
> I'm still using one of those "old Mac systems" as my daily driver.
> 
> Just checked the ACPI tables and there's an FPEN method below the
> FRWR device which toggles GPIO 48 on the PCH.  Checked the schematics
> as well and GPIO 48 is marked FW_PWR_EN.  The GPIO controls load
> switches which cut power to the FW643 chip when nothing is connected.
> 
> Also, FW_PWR_EN feeds into an SLG4AP016V chip where it seems to
> internally gate FW_CLKREQ_L.
> 
> I'm guessing the driver may need to call the FPEN ACPI method after
> issuing a SBR to force the chip on (or perhaps first off, then on)
> and thereby re-enable Clock Request.
> 
> It's a pity the ohci.c driver doesn't seem to support runtime PM.
> That would allow cutting power to the chip when nothing is connected
> and thus increase battery life.  The ACPI tables indicate that the
> platform sends a notification when something is plugged in, so all
> the necessary ingredients are there but we're not taking advantage
> of them.
> 
> Thanks,
> 
> Lukas

Yup. In both PCI drivers and unit drivers belonging to Linux FireWire
subsystem, any type of runtime PM is not supported. If I integrate 1394
OHCI driver, I should implement all of the above in any callback of
runtime PM, or the part of the above is already supported by any driver
in parent PCI layer?


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
