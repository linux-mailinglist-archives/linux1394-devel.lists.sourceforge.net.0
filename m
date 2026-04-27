Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IPGGNUAE72kj3wAAu9opvQ
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	for <lists+linux1394-devel@lfdr.de>; Mon, 27 Apr 2026 08:37:52 +0200
X-Original-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D375346DA4E
	for <lists+linux1394-devel@lfdr.de>; Mon, 27 Apr 2026 08:37:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/Ph08Mloig7ONPAB5JCX/HorZk+JknBijEaMy70QU/I=; b=PHz05nuRSEmBDW6APyd6ZkA1xH
	fqVVDH0tpthORgwi9MFPtRXOWuMt3w8YoiSKLM7hWOf4rn+fGkLhThUKwsgSLL20Pq4PLGvSLUmdc
	tp6WejrXa2Rw5j3Tbl6/t1qnABn0N5E0hqTfb2/c8BV3RbL2bLTOkRov3TzenGyAfCGI=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1wHFbB-0000fM-IT;
	Mon, 27 Apr 2026 06:37:41 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1wHFbA-0000fE-0U
 for linux1394-devel@lists.sourceforge.net;
 Mon, 27 Apr 2026 06:37:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JQ3jX8b45w8e7K1rh1Scy9p9GYcqQJqTFHq7yLZacpY=; b=mZ1Nv4mdN7q0pHi5nokdB/bgW/
 J7rQ/nLsG+Y41deZ8nH5goblYF1whiFqO4Oh3TA35s/+oF1PPz8WVnfnmsOm0vC9ZXEx+4/V3HBMe
 tGXsm+0NWf/5vcg7uQH/8ULAZ5d5NKQg7OGmZZ466UMNYXdVRQKvXoTYjuZ2VkJKoOVM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JQ3jX8b45w8e7K1rh1Scy9p9GYcqQJqTFHq7yLZacpY=; b=Z08ewyu49tFs1186CKKTt5bKRh
 N9bs7qHl5Med0mS7Fo49BxkX9jWJqkKvCqSZDgr/03wBoE9nhLDc5Zl7htulQCzuMigA5/WF3aJ9u
 wvMul8FruxjQc5q3hGuCUAtj7dMcIOMmFqLeanAAD0NuxIMJNyAwVHH2DHz3KBHAKgUE=;
Received: from fout-b6-smtp.messagingengine.com ([202.12.124.149])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1wHFb8-0008RQ-1N for linux1394-devel@lists.sourceforge.net;
 Mon, 27 Apr 2026 06:37:39 +0000
Received: from phl-compute-05.internal (phl-compute-05.internal [10.202.2.45])
 by mailfout.stl.internal (Postfix) with ESMTP id AC5861D0018F;
 Mon, 27 Apr 2026 02:37:26 -0400 (EDT)
Received: from phl-frontend-03 ([10.202.2.162])
 by phl-compute-05.internal (MEProxy); Mon, 27 Apr 2026 02:37:27 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:content-type
 :date:date:from:from:in-reply-to:in-reply-to:message-id
 :mime-version:references:reply-to:subject:subject:to:to; s=fm2;
 t=1777271846; x=1777358246; bh=JQ3jX8b45w8e7K1rh1Scy9p9GYcqQJqT
 FHq7yLZacpY=; b=QRomogZ9/FO6Xf9+1ThQ2fgu5cMghsqXMgSnKxaGLhR2RMXC
 ZeNUp1i5XN8KfpdU6L9fHA0IgT5fjIpg7LA9xDr3nHvXrTZdiXEXDuaki8Gu/Ms7
 Jx9nIC9MQYWIJdAs1lh973ap91i1WC6iDFpGAYAGwxzfIy48AudfQB00uzrkXYcT
 pbLJZ06aiLv2wJMkK2pjInT7R3waA7jLmRtqFpoiv+Gq/C7iVqqp5S4TAcI44onm
 HtyQanW19pcwQ9J0h8gN0OoaSM/ikYcJlrbnfk+4Kkklv2Q8zA693jMCaWVa7xRw
 dGbbipC3HVzQIn8nB/pWek5g9MnIGReoUftNMg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1777271846; x=
 1777358246; bh=JQ3jX8b45w8e7K1rh1Scy9p9GYcqQJqTFHq7yLZacpY=; b=C
 TfbzrM11yMbj30X6TZc4tP9tRncb8/KnWJgBQAqeMpAdJLii8ct0mSjuOQ78k0zY
 /ddBCmyfynUJB2G6HdYtt3bAtjF/QNl7x6pyLTyRCPxi4YMtouSM4OVZzyLkmkqf
 emYY8lOD4MIqA0B0BrDmkjMKqaefjc4cJ5bkFrVFzoSqogfkYnGEjUMYMhu8a2HI
 tcLus2nvDDnmlMUscySrm/pndKAXD8WVbAjpdPMPhlHuJDmARIB9Hf/Va8GggCoQ
 Sazbsi58C5naXtucXSPOHNpAr8JqrNHET19rRaKh4nurwk3a4Zm58XT1MEGFRZOX
 N3FKxSUMooUkEX8AmiKNQ==
X-ME-Sender: <xms:JQTvaYDP6xZQiCZ2NcRnJ0vJHXF79GIhCkKiMsGeHoYaeH28KZFLlQ>
 <xme:JQTvaQjR1sG2Fm9V4QGloMX12gH9SoRdrJUXgUsZBeECbLJP1YQRmcOvVx-aeBGN_
 vTP0Mt3zBJBodjBrPu-qTl6qEdq9eof1IIvWNNH1GtDwK-rADNnLg>
X-ME-Received: <xmr:JQTvaWaZZL9-ZDc4UTUaBeFiD9wknIy_i1sVYlbU_yXRC0pwIdBTAAQwDm9CBm9G6fLau5h6Kypx2JsIBbV84ZiJL_IFug>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgdejjeellecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
 hrpeffhffvvefukfhfgggtugfgjgesthekredttddtudenucfhrhhomhepvfgrkhgrshhh
 ihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjph
 eqnecuggftrfgrthhtvghrnhepfeevfeelgfefveeffedvgeffhefghfevgfelvedviedv
 udekgedtheeukefhteeunecuffhomhgrihhnpeduqdhrtgdurdhmhidpkhgvrhhnvghlrd
 horhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhep
 ohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjphdpnhgspghrtghpthhtohepud
 dtpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehurdhklhgvihhnvgdqkhhovghn
 ihhgsegsrgihlhhisghrvgdrtghomhdprhgtphhtthhopegtlhgvmhgvnhhssehlrgguih
 hstghhrdguvgdprhgtphhtthhopehpvghrvgigsehpvghrvgigrdgtiidprhgtphhtthho
 pehtihifrghisehsuhhsvgdrtghomhdprhgtphhtthhopehlkhestgdqqdgvrdguvgdprh
 gtphhtthhopegthhhrihhsthhirghnrdgvhhhrhhgrrhguthestghouggrshhiphdrtgho
 mhdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlsehlihhsthhsrdhsohhurh
 gtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhugidqshhouhhnugesvhhgvghr
 rdhkvghrnhgvlhdrohhrghdprhgtphhtthhopeifshgrodhrvghnvghsrghssehsrghngh
 dqvghnghhinhgvvghrihhnghdrtghomh
X-ME-Proxy: <xmx:JQTvaRkFIYDhs1-x88yUg0rzhAYA1Xzj50gTKFTJe3inxX2DAemW5g>
 <xmx:JQTvachjKiO9lTs_-n-B_5gA3DZc6gFtimeZVSjBmHgCYRy-IgLXwA>
 <xmx:JQTvaTSyit15DOgN2z5EZp24PeMEyGJdLNMlzVb4pVQGjNPiqzvMGg>
 <xmx:JQTvadbbZkcmfEqNST3BjpEhP5xyQy-Eyy5lk8mfPnjQQ_nQK413Xg>
 <xmx:JgTvaZXmuO-_EFgV9hh_dMCnamB1BIjEgI535aXOJQ2c47iXNienjWyr>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 27 Apr 2026 02:37:22 -0400 (EDT)
Date: Mon, 27 Apr 2026 15:37:19 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig_=28The_Capable_Hub=29?=
 <u.kleine-koenig@baylibre.com>
Subject: Re: [PATCH v1 0/2] firewire: Simplify storing pointers in device id
 struct
Message-ID: <20260427063719.GA37068@sakamocchi.jp>
Mail-Followup-To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig_=28The_Capable_Hub=29?=
 <u.kleine-koenig@baylibre.com>, 
 Clemens Ladisch <clemens@ladisch.de>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 "Christian A. Ehrhardt" <lk@c--e.de>,
 "Christian A. Ehrhardt" <christian.ehrhardt@codasip.com>,
 linux1394-devel@lists.sourceforge.net, linux-sound@vger.kernel.org,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>
References: <cover.1776579304.git.u.kleine-koenig@baylibre.com>
 <20260423141959.GA268626@sakamocchi.jp>
 <aepEedmf6sA83XpQ@monoceros>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aepEedmf6sA83XpQ@monoceros>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "sfi-spamd-1.hosts.colo.sdot.me",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, On Thu, Apr 23, 2026 at 06:53:12PM +0200, Uwe Kleine-König
    (The Capable Hub) wrote: > Hello Takashi, > > On Thu, Apr 23, 2026 at 11:19:59PM
    +0900, Takashi Sakamoto wrote: > > It is unclear who is res [...] 
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
X-Headers-End: 1wHFb8-0008RQ-1N
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
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "Christian A. Ehrhardt" <lk@c--e.de>, Takashi Iwai <tiwai@suse.com>,
 linux-sound@vger.kernel.org,
 "Christian A. Ehrhardt" <christian.ehrhardt@codasip.com>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Jaroslav Kysela <perex@perex.cz>, linux1394-devel@lists.sourceforge.net
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linux1394-devel-bounces@lists.sourceforge.net
X-Rspamd-Queue-Id: D375346DA4E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.49 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[sakamocchi.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[linux1394-devel@lists.sourceforge.net];
	MIME_TRACE(0.00)[0:+];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,sakamocchi.jp:s=fm2,messagingengine.com:s=fm2];
	FORGED_SENDER(0.00)[o-takashi@sakamocchi.jp,linux1394-devel-bounces@lists.sourceforge.net];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_MIXED(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:u.kleine-koenig@baylibre.com,m:andriy.shevchenko@linux.intel.com,m:lk@c--e.de,m:tiwai@suse.com,m:linux-sound@vger.kernel.org,m:christian.ehrhardt@codasip.com,m:wsa+renesas@sang-engineering.com,m:perex@perex.cz,m:linux1394-devel@lists.sourceforge.net,m:wsa@sang-engineering.com,s:lists@lfdr.de];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,sakamocchi.jp:-,messagingengine.com:-];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[o-takashi@sakamocchi.jp,linux1394-devel-bounces@lists.sourceforge.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux1394-devel,renesas];
	FORGED_SENDER_MAILLIST(0.00)[]

Hi,

On Thu, Apr 23, 2026 at 06:53:12PM +0200, Uwe Kleine-K=F6nig (The Capable H=
ub) wrote:
> Hello Takashi,
> =

> On Thu, Apr 23, 2026 at 11:19:59PM +0900, Takashi Sakamoto wrote:
> > It is unclear who is responsible for maintaining the 'ieee1394_device_i=
d'
> > structure in include/linux/mod_devicetable.h, but if it falls under my
> > responsibility (which seems likely),
> =

> It matches my understanding that it's indeed you who is responsible for
> ieee1394_device_id.
> =

> > I would prefer to postpone applying these patches, or at least exclude
> > them from this merge window.
> =

> I don't expect them to go in for v7.1-rc1. My idea was to send this kind
> of patch during the merge window to allow to get it into next soon after
> the merge window closed to allow some cooking in next.
>  =

> > After reading the discussions around the UAPI, I am not fully convinced
> > that your patches appear to provide clear benefits to existing
> > IEEE 1394 bus users or their software. From my perspective, the motivat=
ion
> > appears to be primarily related to the CHERI extension work.
> =

> Yes and no. My motivation to work on these is triggered by CHERI indeed.
> But I already worked on this kind of update even before I knew about
> CHERI to get rid of the casts. (Back then it was about i2c, see
> https://lore.kernel.org/all/20240426213832.915485-2-u.kleine-koenig@pengu=
tronix.de/.)
> =

> For me this series is a sweet spot, because it allows to reduce the
> CHERI patch stack but at the same time reduces the amount of (IMHO ugly)
> casts involved in handling pointers in .driver_data. With my mainline
> maintainer hat on, I consider the latter alone a good enough reason to
> apply patches like this. One issue it addresses en passant is that a
> part of the casts back to a pointer drop the const attribute, see the
> output of
> =

> 	git grep '\*).*driver_data' | grep -v '\<const\>'
> =

> . I didn't check for false positives in this list, but I guess there are
> not many. This doesn't affect firewire though, there the casts are all
> fine.
> =

> As my patch series doesn't introduce changes to the compiled drivers,
> the effect on bus users or their software is admittedly quite limited of
> course :-), but I'd hope that you see a benefit in the 2nd patch even if
> CHERI isn't (and probably shouldn't be) a motivation for you.
> =

> The reason I mentioned CHERI was mainly to be transparent about my
> motivation, but this triggered more discussion than I liked, distracting
> from the advantages of the changes for non-CHERI archs.
> =

> > As you know, this subsystem is quite marginal in the Linux kernel
> > codebase. Given that, it might be worth considering whether this
> > subsystem should be excluded from the build target when capability
> > pointers are enabled (e.g. via Kconfig, if available), since it does not
> > appear to work outside the ILP32 or LP64 data models. It may be worth
> > carefully considering where effort is best spent. I can understand the
> > merits of CHERI extensions, but changes related to this subsystem would
> > likely be acceptable only after the kernel core functions have been
> > updated.
> =

> I wasn't aware about this limitation. struct ieee1394_device_id just
> happend to be near the top of include/linux/mod_devicetable.h. (There is
> only pci_device_id before, but I wanted to start with a smaller part of
> this quest.)
>  =

> > That said, this is just my current view. I would welcome any feedback or
> > objections. Besides, it is still one of my tasks to figure out how to
> > adapt the UAPI structures and the firewire core implementations to
> > non-ILP32/LP64 data models.
> =

> With you talking much about UAPI I wonder if you're aware that for all
> current Linux architectures my patch set doesn't introduce any changes
> in the binary interface because all have sizeof(unsigned long) =3D=3D
> sizeof(union { unsigned long; const void *; }). And the two adaptions
> (my introduction of the union for driver_data + your UAPI structure
> adaptions) should not restrict each other, right?
> =

> So I'd be glad if you forgot about CHERI and just judge the patchset for
> the things it achieves for current mainline. Of course I hope you agree
> it's a nice cleanup eventually and apply it.

Setting aside CHERI-related considerations, what concrete benefits do
these patches provide to the current kernel? Are those benefits clearly
explained in the cover letter and the patch comments?

From the cover letter, I understand that:

> A considerable amount of drivers for the first category uses the
> unsigned long variable to store a pointer. This involves casting both
> for assignment and usage.

The conversion between 'unsigned long' and 'void *' are not inherently
invalid within ILP32/LP64 data models. As I see it, the main significant
effect of these patches is to add a 'const' qualifier to pointer values
(and improve type safety, presumably in your view).

If that is the case, why do the patch comments spend so much lines
describing the size of unsigned long and pointer types, and CHERI
extension? These points do not seem directly relevant to the practical
benefits described above.

It would be better to repost the patches with clearer and more focused
comments so that subsystem maintainers are more likely to apply them
without the background discussion about the CHERI extension.


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
