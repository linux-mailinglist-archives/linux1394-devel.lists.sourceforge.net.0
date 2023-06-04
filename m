Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D3F527214EB
	for <lists+linux1394-devel@lfdr.de>; Sun,  4 Jun 2023 07:45:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1q5gYG-0000Ez-HL;
	Sun, 04 Jun 2023 05:45:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1q5gYC-0000Ei-DV
 for linux1394-devel@lists.sourceforge.net;
 Sun, 04 Jun 2023 05:45:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mYfYawhR6/FwU6aA3Or07fkbdZ6eFN/9YA8MoLGiTOI=; b=WRAUotcudmusapslNQjq2feaJO
 h5ZjvcBDWYG3xetbq1vCWTlo6UiXnXUJzEB/TMtpubBzyK3Kw98DjUGOr44w4KHglU9PYcf+imSgt
 NyuDfRKGOzaUtN6b0nV6879U7lGYqTSVZ9B/gF3CrWt/uu1uuIvtAnS5LqefK4RoVq4c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
 Sender:Reply-To:Cc:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=mYfYawhR6/FwU6aA3Or07fkbdZ6eFN/9YA8MoLGiTOI=; b=W
 NNZZ4wxiWFXk56bR3z9wraIU+XkqQqqDcYMZ8pcQ++sG6zegR5VI0fDmURM8tebjUy6/2cKYzwZaL
 wGiB+9K99EEeKy+2+ZKi9VIvisTrpAo+ZIk7NfZut8z9tjX3+KQKJVcwT2vu6l6n+FJFYYPtiFeld
 4PLPsEnlRjPAHeBk=;
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q5gY2-00AcOn-FR for linux1394-devel@lists.sourceforge.net;
 Sun, 04 Jun 2023 05:45:13 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.nyi.internal (Postfix) with ESMTP id 9A0865C0103;
 Sun,  4 Jun 2023 01:44:56 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Sun, 04 Jun 2023 01:44:56 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:content-transfer-encoding:content-type:date:date:from:from
 :in-reply-to:message-id:mime-version:reply-to:sender:subject
 :subject:to:to; s=fm1; t=1685857496; x=1685943896; bh=mYfYawhR6/
 FwU6aA3Or07fkbdZ6eFN/9YA8MoLGiTOI=; b=nzbvAALfuKK8lO11gTvuhUocJ2
 qHT2Pvh9oKeKPUL0QwvzOQtP292DO/53pAimHHT09OcMDfWapT6EH35yBN3MFRxr
 va4xQe2DwCJXfTh/mFFE8eQGGySGh7gCqzdaCay3HjXxqfMzrJmoPbgBth7WRJEQ
 22Oq45p9IJ7dgVOpqAB/TIUo95fE7udI7bEyOGaFXVtscrWzKWCYgIst3b0GjgXy
 92Eb6V4rHSX4WxyqYnFCUkBk/XZJwfe5QurGkoRiHse00e+A4pWaT69wpbAjkmgX
 4hc099B9ik4lTy/XpRmXEnKAFk2RmbpT0Z8yGGDPO3uJGB/+3w62xHTTmp0w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:date:feedback-id:feedback-id:from:from:in-reply-to
 :message-id:mime-version:reply-to:sender:subject:subject:to:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; t=1685857496; x=1685943896; bh=mYfYawhR6/FwU6aA3Or07fkbdZ6e
 FN/9YA8MoLGiTOI=; b=vS/BRBm5+glxkXhS8cAZ2qCCRd6TEaOBtWeH54E1Fau9
 CBjAuQNGGeq3rEm/bboWVSmKSFdTmezYDjDlDHGmYLq0pWSHEPXyWyXoI2/nh/pB
 D3YkZ98bC8Ab9+i8t9Ccb0e2hwkadqXWZEgL9gvWnHTFP0Czc5FhS5kh32SHdYfX
 scgmupmeVcpXweVvxZ9cn7s+1iEMEK+s1dRRNbQa9Gs6xljzoNR05MCu3H0JM9pq
 nHoYLMdRYXiertr9RVsBWFBbfd2oLm4LirjvrW5lp2jyEGdEdrT/M05uH8voAtJc
 qVx0hDlCi5j52VGvLrHBJ62lPF0xSo/YBRLtIg21dQ==
X-ME-Sender: <xms:2CR8ZJQHTrWt9_ofO8bDRnqu-R1W51Xjfm4-Qtfmo6BFvQH52unNew>
 <xme:2CR8ZCxObukXaT1KG6xAJ189CAMGjvqb8_YC4jxLMsFuOb2ywbWYCF21uLb5a-OkI
 gEwfRXaj0Gh3nlOdiQ>
X-ME-Received: <xmr:2CR8ZO0oI65Vv_Y2kd_CP7ssCMJl87WTV-wgzzqCFFJx8-Qa6jUIKhrxZZqYm2grggpUuQB6BYGgw4GcI8Jt_hKK7-s2wY7xk8HV7Nt3bpU>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfeeliedguddtudcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffoggfgsedtkeertd
 ertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedujeetlefhtd
 dtkefgtdeuieelhffgteejjeehkeegveduvdevgeeiheeuueekjeenucevlhhushhtvghr
 ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrg
 hkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:2CR8ZBDHHEFwR2fjgXrnmiFyEsKb77n_L61jcdxfdwKnGvWMUvbgvg>
 <xmx:2CR8ZCjmHDMR_7sK2nLWT-KBExKwkw4KswZ_DJ-FZcrPev5WgIhBzw>
 <xmx:2CR8ZFqL3Bd6NGiun2pZVmJhbWcGTbc6XwseERwWDlu4hXcJN0EQyA>
 <xmx:2CR8ZKKWgY5zghHvOGhqwuBsBeyS_nX0QYZua5k_XLV8KCnY8u2N7w>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 4 Jun 2023 01:44:55 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/9] firewire: ohci: adoption of device managed resource
Date: Sun,  4 Jun 2023 14:44:42 +0900
Message-Id: <20230604054451.161076-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi,
 Linux FireWire subsystem includes a driver (firewire-ohci)
 for 1394 OHCI controller. The code of driver is mostly written at the time
 when device managed resource (devres) was not widely used. Nowaday [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.26 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1q5gY2-00AcOn-FR
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

Hi,

Linux FireWire subsystem includes a driver (firewire-ohci) for 1394 OHCI
controller. The code of driver is mostly written at the time when device
managed resource (devres) was not widely used. Nowadays the usage of
devres is standard when writing drivers. The series is an adoption of
devres for firewire-ohci.

I note that MSI-related operation is left as is. The hardware vendors
forms their products of extension card with 1394 OHCI controller
connected to PCIe bus by several ways. If chip of 1394 OHCI controller has
PCIe interface (e.g. VIA VT6315, LSI FW643), it is just connected to PCIe
bus. If the chip has PCI interface only, it is connected to PCIe bus via
PCI/PCIe bridge chip (e.g. VIA VT6307 + asmedia ASM1083). There is some
chip of 1394 OHCI controller integrated with the bus bridge (e.g. TI
XIO2213, XIO2221). The MSI-related operation should cover the above
forms as well as module option, while it is still unclear that the
operation from pci device driver to the bus bridge.

Takashi Sakamoto (9):
  firewire: ohci: use devres for memory object of ohci structure
  firewire: ohci: use devres for PCI-related resources
  firewire: ohci: use devres for MMIO region mapping
  firewire: ohci: use devres for misc DMA buffer
  firewire: ohci: use devres for requested IRQ
  firewire: ohci: use devres for list of isochronous contexts
  firewire: ohci: use devres for IT, IR, AT/receive, and AT/request
    contexts
  firewire: ohci: use devres for content of configuration ROM
  firewire: ohci: release buffer for AR req/resp contexts when managed
    resource is released

 drivers/firewire/ohci.c | 174 +++++++++++++++-------------------------
 1 file changed, 63 insertions(+), 111 deletions(-)

-- 
2.39.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
