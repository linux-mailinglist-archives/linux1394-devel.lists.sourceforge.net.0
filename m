Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 35B958B4F34
	for <lists+linux1394-devel@lfdr.de>; Mon, 29 Apr 2024 03:26:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1s1Fms-0002ZM-NO;
	Mon, 29 Apr 2024 01:26:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1s1Fmq-0002Z7-RI;
 Mon, 29 Apr 2024 01:26:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+J8zA8zQbdC43bXktQ9i0H2MmdEkxFgcfIeAsLIuBvk=; b=iuiEhYbQiEZWmlrYuay5FD58DZ
 nLzhTaEWL8z76T6BY1YYYkLXcZOnr6yeVrqTUQ7r5jGDmDYoTMACOyY8ulSWsHZzYCJncaltEONQS
 XtLhHxcPUiyOgcjcM8woR9W8CG3Hbm42VpYE5Le3Cnh3zRlOVKPpz7bZCZrpd0+fB0wE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+J8zA8zQbdC43bXktQ9i0H2MmdEkxFgcfIeAsLIuBvk=; b=TIcJestU0iZzHHMCimuL0fD0wV
 sgkm/pP0zgs0Q7SbrIvU5FXthLkoD6rNdOI2B60/y8XgBSPgfGHlcXt+iQRTaqfkJIVYuODAesnsU
 XE9CLeMRZeuXVDgDEGLpjg57S9+xJ1fPNzvxaYW6co9PNNcCNiXBgtUOvGbpsyGo23iw=;
Received: from fhigh8-smtp.messagingengine.com ([103.168.172.159])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s1Fmp-0003C6-UD; Mon, 29 Apr 2024 01:26:33 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id B3AB51140126;
 Sun, 28 Apr 2024 21:26:21 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Sun, 28 Apr 2024 21:26:21 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:subject
 :subject:to:to; s=fm3; t=1714353981; x=1714440381; bh=+J8zA8zQbd
 C43bXktQ9i0H2MmdEkxFgcfIeAsLIuBvk=; b=LPPRuyhH4dMtEaUzM8mD/plp0v
 cR6qPvII5SY0Wbm1rLngxaM2p3nnjTzdzGA59M+Pv99qIJlC0eenHfWHPpFW1EZl
 xJ59VVA7Ng4VxvMx1wfBVfAD1+7NvOC9it9VN2PWbXXIrC1fCJjS19D0k/oSyoCx
 2J627MCAaX/LnlNGULvhz9EGb+E6apmgIPtDczlL76BN2TkgIYWbZlPDD3mMD4db
 NOxWzB5Pg3JfTMfHzzcBSScA9REqcn1wNmJc0NTDytxolHy5RHUyOCBPPAkPu/nP
 9H8iIhZwEbZsUmHUlXqeqVRHfOXssA9ZjUnS3ZG4rm4O9vGdMBmojCIt/o5A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1714353981; x=1714440381; bh=+J8zA8zQbdC43bXktQ9i0H2MmdEk
 xFgcfIeAsLIuBvk=; b=D/Fi3uNGHX2WcQZozHhk+TspIMYVtiY8eySO5CUFxNVh
 ZGu/6HK3bF3IQLMS5IH3Hxkc8SmakHmSqN4DtsYUiDWLypHGTPpDlgGzMQTs6Iis
 ttn4kfppsAlmk8eZqc96b6dtuMTuoA1HQuPjxCfGq/69VtdIdBNy2gmbaI4x7KhU
 7SHQh29mlLMOfOrClDnJ+/Q8TdUxs4gwqM36vC2ZefAlAtIIeCShOLzBuxeyv2+E
 LwfYhYsE7MyZ2Kyb9upWtaFE+onTZTVVhtqAHB08DKbPflP6kW8YAqHO0jb3symN
 fDujmiIYG8XdIXGV9Hx0/FQfu4LDxtpwK4zU5EPwYQ==
X-ME-Sender: <xms:PfcuZgkH9xDoFeRgiXjMyKmwdLRgNf9OFxLorz6r595Tvi3Ox7ZVJw>
 <xme:PfcuZv0wwrtWdYgFowrTRC4yvgV2mP_RQv7Ur5rTN16HAzwefFPtYudFZFMjcW-gQ
 rggDN4p8eN53sMxW-Y>
X-ME-Received: <xmr:PfcuZuqBTvD-cj7DczKGPq5rcLfQrmcwW2fTJwldGLiRnMtE7AUzY9Sfv8LjpIxXbnKhws4mxra3gmIPnfZ0bTm0k9RLVKDtMCI>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvddtjedguddvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefvrghkrghs
 hhhiucfurghkrghmohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjh
 hpqeenucggtffrrghtthgvrhhnpeelhfeugedvjefgjefgudekfedutedvtddutdeuieev
 tddtgeetjeekvdefgeefhfenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmh
 grihhlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:PfcuZsn4wM6jgRj4TQLISVMhUY_o-koYraXSKb9sZpEkVlDp7BWjow>
 <xmx:PfcuZu1HPks0S-m0Rlq_D9Ul-_9rz_5sThQvcXYFHvc82dfggs3c-A>
 <xmx:PfcuZjsqhlPS7YvbITv2by-UiTK_KoHESJf9OXs-kOTNUiTmtnIT1w>
 <xmx:PfcuZqWOEqW7PuC_g-fEJckVi7Zwz7OiFZ-922K9KRljUET60lFQ4A>
 <xmx:PfcuZjx8tb1CXbGp7y5sYybbB9SM7aZrF2WM-YLbZrPrOtOxKnOTMa8I>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 28 Apr 2024 21:26:20 -0400 (EDT)
Date: Mon, 29 Apr 2024 10:26:17 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: "Joerg M. Sigle" <joerg.sigle@jsigle.com>,
 linux1394-devel@lists.sourceforge.net, ffado-devel@lists.sourceforge.net
Subject: Re: Fwd: Requested configuration data - Re: Is there support for the
 Tascam DM-4800 / IF-FW DM Version 2 or could you guide me to try
 making it?
Message-ID: <20240429012617.GA495894@workstation.local>
Mail-Followup-To: "Joerg M. Sigle" <joerg.sigle@jsigle.com>,
 linux1394-devel@lists.sourceforge.net,
 ffado-devel@lists.sourceforge.net
References: <206e7a47-ba27-a2b4-3611-2d548dff5995@jsigle.com>
 <5d60e9a5-b594-5edd-19c2-e38ea210eeaa@jsigle.com>
 <20240429010558.GA494058@workstation.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240429010558.GA494058@workstation.local>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: P.S. the content of configuration ROM can be dumped by
 config-rom-pretty-printer
 in linux-firewire-utils. The node of your device has: guid: 0x22e0001800000
 vendor_id: 0x00022e model_id: 0x800006 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1s1Fmp-0003C6-UD
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

P.S. the content of configuration ROM can be dumped by
config-rom-pretty-printer in linux-firewire-utils.

The node of your device has:

guid:      0x22e0001800000
vendor_id: 0x00022e
model_id:  0x800006

It includes one unit:

specifier id: 0x00022e  
version:      0x800006  
model_id:     0x00022e  

It is odd that the node and unit has the different values for their
model_id fields. I think Tascam programmer applied the wrong configuration
to them when developing dice firmware

Note that ALSA dice driver is bound to the unit, thus both vendor_id and
model_id should be 0x00022e.

$ config-rom-pretty-printer < audio_and_music/dice/tascam-iffw2.img 
               ROM header and bus information block
               -----------------------------------------------------------------
1024  04042ec6  bus_info_length 4, crc_length 4, crc 11974
1028  31333934  bus_name "1394"
1032  e0ff8112  irmc 1, cmc 1, isc 1, bmc 0, pmc 0, cyc_clk_acc 255,
               max_rec 8 (512), max_rom 1, gen 1, spd 2 (S400)
1036  00022e00  company_id 00022e     | 
1040  01800000  device_id 0025165824  | EUI-64 0613527513464832

               root directory
               -----------------------------------------------------------------
1044  0006f261  directory_length 6, crc 62049
1048  0300022e  vendor
1052  8100000a  --> descriptor leaf at 1092
1056  17800006  model
1060  8100000d  --> descriptor leaf at 1112
1064  0c0087c0  node capabilities: per IEEE 1394
1068  d1000001  --> unit directory at 1072

               unit directory at 1072
               -----------------------------------------------------------------
1072  000411c4  directory_length 4, crc 4548
1076  1200022e  specifier id
1080  13800006  version
1084  1700022e  model
1088  8100000d  --> descriptor leaf at 1140

               descriptor leaf at 1092
               -----------------------------------------------------------------
1092  0004a79e  leaf_length 4, crc 42910
1096  00000000  textual descriptor
1100  00000000  minimal ASCII
1104  54415343  "TASC"
1108  414d0000  "AM"

               descriptor leaf at 1112
               -----------------------------------------------------------------
1112  00066bda  leaf_length 6, crc 27610
1116  00000000  textual descriptor
1120  00000000  minimal ASCII
1124  49462d46  "IF-F"
1128  572f444d  "W/DM"
1132  206d6b49  " mkI"
1136  49000000  "I"

               descriptor leaf at 1140
               -----------------------------------------------------------------
1140  00066bda  leaf_length 6, crc 27610
1144  00000000  textual descriptor
1148  00000000  minimal ASCII
1152  49462d46  "IF-F"
1156  572f444d  "W/DM"
1160  206d6b49  " mkI"
1164  49000000  "I"


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
